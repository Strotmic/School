import serial 
from RPi import GPIO
import time
from shiftRegister import ShiftRegister
import re

GPIO.setmode(GPIO.BCM)
ser = serial.Serial('/dev/ttyAMA0')  # open serial port 
# print(ser.name) 

btn1 = 20
ds = 17
oe = 27
shcp = 5
stcp = 22
mr = 6

counter = 0

GPIO.setup(btn1, GPIO.IN, pull_up_down=GPIO.PUD_UP)

# pwm -> w2 en lentetaak './w2_pwm_temp/led.py/'

def test(pin):
    global counter
    if counter ==0:
        counter = 1
    elif counter ==1:
        counter = 0
    ser.write('x'.encode(encoding='utf-8'))

GPIO.add_event_detect(btn1, GPIO.FALLING, callback=test, bouncetime=200)

mask = 0B1111_1111
A = 1 << 0
B = 1 << 1
C = 1 << 2
D = 1 << 3
E = 1 << 4
F = 1 << 5
G = 1 << 6
DP = 1 << 7

segments1 = {
    "0": A | B | C | D | E | F, 
    "1": B | C, 
    "2": A | B | D | E | G, 
    "3": A | B | C | D | G, 
    "4": B | C | F | G, 
    "5": A | C | D | F | G, 
    "6": A | C | D | E | F | G, 
    "7": A | B | C, 
    "8": A | B | C | D | E | F | G, 
    "9": A | B | C | D | F | G,
}

segments2 = {
    "0": A | B | C | D | E | F | DP, 
    "1": B | C | DP, 
    "2": A | B | D | E | G | DP, 
    "3": A | B | C | D | G | DP, 
    "4": B | C | F | G | DP, 
    "5": A | C | D | F | G | DP, 
    "6": A | C | D | E | F | G | DP, 
    "7": A | B | C | DP, 
    "8": A | B | C | D | E | F | G | DP, 
    "9": A | B | C | D | F | G | DP,
}

def setup():
    global shiftRegister
    print("setup")
    GPIO.setmode(GPIO.BCM)
    shiftRegister = ShiftRegister(ds, stcp, mr, oe, shcp)
    shiftRegister.write_byte(0x0)


def write_number(number):
    shiftRegister.write_byte(mask ^ segments1[number])

def write_number2(number):
    shiftRegister.write_byte(mask ^ segments2[number])

try:
    setup()
    while True:
        line = str(ser.readline())
        print(line)
        if counter == 0:
            write_number2(line[2])
        if counter ==1:
            write_number(line[2])

except KeyboardInterrupt as e:
    print(e)

finally:
    ser.close()  #  
    GPIO.cleanup()
