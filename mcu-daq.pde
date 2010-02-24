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
		if (BEGIN_CHAR == incomingByte) enabled = true;
		else if (END_CHAR == incomingByte) enabled = false;
	}

	if (enabled)
		Serial.println(analogRead(analogPin);
}
