/********************************************
 * Read from Analog and write it to serial. *
 ********************************************/
#define BEGIN_CHAR 'B'
#define END_CHAR   'E'
int analogPin = 7;
boolean enabled = false;
char incomingByte = '\0';

void setup() {
	Serial.begin(9600);
}

void loop() {
	if (Serial.available()) {
		incomingByte = char(Serial.read());
		switch(incomingByte) {
			BEGIN_CHAR:
				enabled = true;
				break;

			END_CHAR:
				enabled = false;
				break;

			default:
				// do nothing
				break;
		}
	}

	if (enabled)
		Serial.println(analogRead(analogPin));
}
