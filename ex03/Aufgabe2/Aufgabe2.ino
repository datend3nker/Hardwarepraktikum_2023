#define SERIAL_SPEED 9600
#define A_PIN 12 // PB4

void setup() {
  Serial.begin(9600);
  // Pin 12 als ausgabe definieren
  DDRB |= (1<<PB4);
  PORTB &=~(1<<PB4);

  setTimer1Freq();
  //tone(12, 1046);
  
  Serial.write("setup done");
}

void loop() {
}
void setTimer1Freq() {
  // setup der clock
  TCCR1A = 0;
  TCCR1B = 0;
  
  TCCR1B |= (1 << WGM12); // enter CTC mode
  TCCR1B |= (1 << CS11) | (1 << CS10); //64 Prescaler

  OCR1A = 16000000.0 / (2 * 64.0 * 1046) -1; // berechnet sich aus F_CPU / (PRESCALER * FREQ) - 1
  TIMSK1 |= (1 << OCIE1A);  // stellt den trigger für die isr ein
}

// Interrupt Service Routine for Timer 1 Compare Match A
ISR(TIMER1_COMPA_vect) {
  PINB |= (1 << PB4);
}