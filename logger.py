# note: requires pySerial (http://pyserial.sourceforge.net/)
import serial
from time import time

# Linux:
#ser = serial.Serial('/dev/tty.usbserial', 9600, timeout = 0)
# Windows:
ser = serial.Serial('COM3', 9600, timeout = 0)

now = time()
ser.write('B')
while time() - now < 5.0:
	if ser.inWaiting():
		print ser.readline()

ser.write('E')

#ta-da!  maybe make it write to a file, next.
