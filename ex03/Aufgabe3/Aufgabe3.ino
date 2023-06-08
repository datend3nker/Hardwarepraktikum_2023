void setup() {
  Serial.begin(9600);

  // Set Pin 10 as output
  DDRB |= (1 << PB2);

  setTimer1Freq();

  Serial.write("Setup done");
}

void setTimer1Freq() {
  TCCR1A = (1 << COM1B1) | (1 << WGM11);
  TCCR1B = (1 << WGM13) | (1 << WGM12) | (1 << CS10);
  ICR1 = F_CPU / (1046) - 1;
  OCR1B = ICR1 / 2;
}

void loop() {
  // No need for additional code in the loop
}
