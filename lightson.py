#Import Libraries
import time
from gpiozero import LED

#Set pins 18, 23 and 24 to be LEDs
red = LED(18)
yellow = LED(23)
green = LED(24)

#Flash LEDs every second
while true:
red.on()
yellow.on()
green.on()

time.sleep(1)

red.off()
yellow.off()
green.off()


