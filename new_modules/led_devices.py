from machine import Pin, PWM
from ujson import loads, dumps
from time import sleep_ms
import rgb_hsv

class led_pwm():
    def __init__(self, pin, topic = None, set_topic = None, inverted = False):
        if pin not in (0, 2, 4, 5, 12, 13, 14, 15,):
            raise ValueError ("pin must be 0, 2, 4, 5, 12, 13, 14, or 15")
        self._pwm_device =  PWM(Pin(pin, Pin.OUT), freq = 400, duty = 0)
        self.val         = 0
        self.type        = 'led'
        self.state       = 'OFF'
        self.old_state   = None
        self.topic       = topic
        self.set_topic   = set_topic
        self.inverted    = inverted
        self.is_on       = False

        self.value(0)

    def __str__(self):
        variables = (self.is_on, self.inverted, self.val, self._pwm_device.duty())
        log_str = 'is_on: {}, inverted: {}, value: {}, duty: {}'
        return log_str.format(*variables)

    def value(self, value = None):
        if value == None:
            return self.val
        elif  0 > value > 255:
            raise ValueError ('value must be between 0 and 255')
        self.val = value
        if value == 0:
            self.is_on = False
            self.state = 'OFF'
        else:
            self.is_on = True
            self.state = 'ON'
        if self.inverted:
            pin_val = 1023 - int(round(value*4.012))
        else:
            pin_val = int(round(value*4.012))
        self._pwm_device.duty(pin_val)
        return self.val

    def update(self, state):
        if isinstance(state, str):
            state = state.lower() # convert value to lower case
        on_states  = ('true',   'on', True,  1, '1')
        off_states = ('false', 'off', False, 0, '0')
        if state in on_states:
            self.on()
        elif state in off_states:
            self.off()

    def on(self):
        self.value(255)

    def off(self):
        self.value(0)

    def toggle(self):
        if self.is_on:
            self.value(0)
        else:
            self.value(255)

class led_strip():
    def __init__(self, pins, topic, set_topic):
        self.type       = 'led_strip'
        self.topic      = topic
        self.set_topic  = set_topic
        self.transition = {'effect': 'fade',
                            'end_state':{},
                                 'step':{},
                      'remaining_steps': 0
                           }
        self.dic_state  = {    'state': 'OFF'
                        # 'transition': None,
                         # 'color_temp: None,
                            # 'effect': effect,
                         }

        if 'red' in pins and 'green' in pins and 'blue' in pins:
            self.red_led   = led_pwm(pins['red'])
            self.green_led = led_pwm(pins['green'])
            self.blue_led  = led_pwm(pins['blue'])
            self.dic_state['color'] = {'r':0, 'g':0, 'b':0 }
            self.dic_state['brightness'] = 0

        if 'white' in pins:
            self.white_led = led_pwm(pins['white'])
            self.dic_state['white_value'] = 0

        self.state     = dumps(self.dic_state)
        self.old_state = None

    def __str__(self):
       state = self.state

       try:
           r = self.red_led.value()
       except AttributeError:
           r = None

       try:
           g = self.green_led.value()
       except AttributeError:
           g = None

       try:
           b = self.blue_led.value()
       except AttributeError:
           b = None

       try:
           w = self.white_led.value()
       except AttributeError:
           w = None

       log_str = 'red {}, green {}, blue {}, white {}, state {}'
       return log_str.format(r, g, b, w, state)

       print('led states', 'rgb', (self.red_led.val, self.green_led.val, self.blue_led.val),
          'w', self.white_led.val)

    def _set_rgb(self, state):

        R = state['color']['r']
        G = state['color']['g']
        B = state['color']['b']
        HSV = rgb_hsv.RGB_2_HSV((R,G,B))
        R, G, B = rgb_hsv.HSV_2_RGB((HSV[0],HSV[1],state['brightness']))

        if state['state'] == 'ON':
            self.red_led.value(R)
            self.green_led.value(G)
            self.blue_led.value(B)

        else:
            self.red_led.value(0)
            self.green_led.value(0)
            self.blue_led.value(0)

    def _update_led(self, state = None):
        if state == None:
            state = self.dic_state
        if 'color' in state:
            self._set_rgb(state)
        if 'white_value' in state:
            W = state['white_value']
            if state['state'] == 'ON':
                self.white_led.value(W)
            else:
                self.white_led.value(0)

    def init_effect(self, end_state, effect = 'fade', steps = 3000):
        # init_effect sets up a color effect (just a fade now) with a end state
        # a step (the difference between end and current devided by the no of steps)
        # and the number of steps remaining.
        transition_step = {}
        if 'brightness' in end_state.keys():
            transition_step['brightness'] = (end_state['brightness'] - self.dic_state['brightness'])/steps
        if 'white_value' in end_state.keys():
            transition_step['white_value'] = (end_state['white_value'] - self.dic_state['white_value'])/steps
        if 'color' in end_state.keys():
            transition_step['color'] = {}
            transition_step['color']['r'] = (end_state['color']['r'] - self.dic_state['color']['r'])/steps
            transition_step['color']['g'] = (end_state['color']['g'] - self.dic_state['color']['g'])/steps
            transition_step['color']['b'] = (end_state['color']['b'] - self.dic_state['color']['b'])/steps
        self.transition['end_state'] = end_state
        self.transition['step'] = transition_step
        self.transition['remaining_steps'] = steps

    def next_step(self):
        # push the effect one step allong and update the effect
        transition = self.transition
        end_state = self.transition['end_state']
        step = self.transition['step']
        remaining_steps = self.transition['remaining_steps']
        next_state = {}
        remaining_steps = remaining_steps - 1
        self.transition['remaining_steps'] = remaining_steps
        if remaining_steps < 0:
                self.transition['remaining_steps'] = 0
                return
        if 'brightness' in end_state.keys():
            next_state['brightness'] = round(end_state['brightness'] - step['brightness']*remaining_steps)

        if 'white_value' in end_state.keys():
            next_state['white_value'] = round(end_state['white_value'] - step['white_value']*remaining_steps)
        if 'color' in end_state.keys():
            next_state['color'] = {}
            next_state['color']['r'] = round(end_state['color']['r'] - step['color']['r']*remaining_steps)
            next_state['color']['g'] = round(end_state['color']['g'] - step['color']['g']*remaining_steps)
            next_state['color']['b'] = round(end_state['color']['b'] - step['color']['b']*remaining_steps)
        next_state['state'] = "ON" # any effect only makes sense if the trip is on
        self.update(next_state)


    def update(self, update_state):
        if isinstance(update_state, dict):
            state = update_state
        elif isinstance(update_state, str):
            try:
                state = loads(update_state)
            except ValueError:
                return
        for key, value in state.items():
            self.dic_state[key] = value
        self.state = dumps(self.dic_state)
        self._update_led()
