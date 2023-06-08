void setup() {
  DDRB = B00100000;
  // Set up Timer 1
  TCCR1A = 0; // set entire TCCR1A register to 0
  TCCR1B = 0; 
  TIMSK1 = 0; 
  TCNT1 = 0; // initialize counter value to 0
  TCCR1B |= (1 << CS10); // same for TCCR1B

  // set compare match register for 1046 Hz increments
  OCR1A = 13628; // = (16*10^6) / (64*2) * (1) (must be <65536)
  OCR1B = 13628; // = (16*10^6) / (64*2) * (1) (must be <65536)

  // turn on CTC mode
  TCCR1B |= (1 << WGM12);

  // Set CS10 and CS11 bits for prescaler = 64
  TCCR1B |= (1 << CS11) | (1 << CS10);

  // Enable timer compare interrupt
  TIMSK1 |= (1 << OCIE1A);
  TIMSK1 |= (1 << OCIE1B);
}

void loop() {
}

void setPin13(boolean high) {
    if (high) {
        PORTB |= B00100000; // Bit wird auf 1 gesetzt
    } else {
        PORTB &= B11011111; // Bit wird auf 0 gesetzt
    }
}

// Interrupt Service Routine for Timer 1 Compare Match A
ISR(TIMER1_COMPA_vect) {
  PINB |= B00100000; // toggle the output pin
}