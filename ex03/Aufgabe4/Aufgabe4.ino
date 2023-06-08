void setup() {
  Serial.begin(9600);

  // Set Pin 10 as output
  DDRB |= (1 << PB2);

  setTimer1Freq(100);

  Serial.write("Setup done");
}

void setTimer1Freq(int freq) {
  TCCR1A = (1 << COM1B1) | (1 << WGM11);
  TCCR1B = (1 << WGM13) | (1 << WGM12) | (1 << CS10);
  ICR1 = F_CPU / (freq) - 1;
  OCR1B = ICR1 / 2;
}

void loop() {

}