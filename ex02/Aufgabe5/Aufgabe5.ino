#define TRIGGER_PIN D8

float measureDistance(int triggerPin) {
  pinMode(triggerPin, OUTPUT);
  digitalWrite(triggerPin, LOW);
  delayMicroseconds(2);
  digitalWrite(triggerPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(triggerPin, LOW);
  pinMode(triggerPin, INPUT);

  // no object detected after 30 milisec
  long duration = pulseIn(triggerPin, HIGH);
  if (duration == 0) {
    return -1;
  }
  // duration - time, 0.034 - Wavespeed, /2 while only hinweg oder ruckweg
  float distance = duration * 0.034 / 2;
  return distance / 100;
}

void setup() {
  Serial.begin(9600);
}

void loop() {
  float distance = measureDistance(TRIGGER_PIN);
  Serial.println(distance);
  delay(1000);
}