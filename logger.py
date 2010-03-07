# note: requires pySerial (http://pyserial.sourceforge.net/)
import serial
from time import time
BEGIN_CHAR = 'B'
END_CHAR = 'E'

# Linux:
#ser = serial.Serial('/dev/tty.usbserial', 9600, timeout = 0.1)
# Windows:
ser = serial.Serial('COM3', 9600, timeout = 0.1)
logfile = open("log.txt", 'w')

now = time()
sampleLength = 5.0
ser.write(BEGIN_CHAR)
while time() - now < sampleLength:
	if ser.inWaiting():
		logfile.writelines(ser.readline())

ser.write(END_CHAR)
while ser.inWaiting():
	logfile.writelines(ser.readline())

logfile.close()
