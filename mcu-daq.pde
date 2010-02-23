/********************************************
 * Read from Analog and write it to serial. *
 ********************************************/
int analogPin = 7;

void setup() {
	Serial.begin(9600);
}

void loop() {
	Serial.println(analogRead(analogPin));
}
