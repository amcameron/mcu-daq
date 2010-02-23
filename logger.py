# note: requires pySerial (http://pyserial.sourceforge.net/)

import serial
ser = serial.Serial('/dev/tty.usbserial', 9600)
while 1:
	ser.readline()

#ta-da!  maybe make it write to a file, next.
