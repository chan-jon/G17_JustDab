import numpy as np
import random
from PIL import Image
import os
import serial

def limit127(input):
    if (input >= 127):
        return 127
    else:
        return input

ser = serial.Serial(
    port='COM4',
    baudrate=9600,
    parity=serial.PARITY_NONE,
    stopbits=serial.STOPBITS_ONE,
    bytesize=serial.EIGHTBITS
)
ser.isOpen()

gameBackground = False
counter = 3 # Number of picture delay to aid in calibration
while (1):
    if (os.path.exists('a_pic'+str(counter)+'.png')):
        if gameBackground is False:
            im = Image.open('a_pic3.png')
            pixels = list(im.getdata())
            pixels = np.array(pixels)
            pixels = pixels[:,0] # 0 Red, 1 Green, 2 Blue
            gameBackground = pixels
        im = Image.open('a_pic'+str(counter)+'.png')
        pixels = list(im.getdata())
        pixels = np.array(pixels)
        pixels = pixels[:,0] # 0 Red, 1 Green, 2 Blue
        ser.write(chr(127).encode('utf-8'))
        ser.write(chr(127).encode('utf-8'))
        ser.write(chr(127).encode('utf-8'))
        frame = list(map(limit127, abs(pixels - gameBackground)))
        for elem in range(0, len(frame)):
            ser.write(chr(frame[elem]).encode('utf-8'))
        counter = counter + 1
