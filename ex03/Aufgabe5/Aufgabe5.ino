volatile uint32_t tCount;
int freq;

void setup() {
  Serial.begin(9600);
  // Set Pin 10 as output
  DDRB |= (1 << PB2);
  
  freq = 0;
  setTimer2(true);
  
  Serial.print("setup done");
}

void loop() {
  if (tCount >= 500){
    freq += 100;
    if (freq > 2000) freq = 0;
    setTimer1Freq(freq);
    tCount = 0;
  }
}

void setTimer1Freq(int freq) {
  TCCR1A = (1 << COM1B1) | (1 << WGM11);
  TCCR1B = (1 << WGM13) | (1 << WGM12) | (1 << CS10);
  ICR1 = F_CPU / (freq) - 1;
  OCR1B = ICR1 / 2;
}

void setTimer2(bool activate) {
  if (activate) {
    // setup the clock
    TCCR2A = 0;
    TCCR2B = 0;
    TCCR2A |= (1 << WGM21); // enter CTC mode
    TCCR2B |= (1 << CS22) | (1 << CS21);// | (1 << CS20);

    OCR2A = 62; // set OCR2A value for 1 millisecond at 16MHz clock
    TIMSK2 |= (1 << OCIE2A);  // enable the compare match A interrupt
  } else {
    // deactivate the timer
    TCCR2A = 0;
    TCCR2B = 0;
    TIMSK2 &= ~(1 << OCIE2A);  // disable the compare match A interrupt
  }
}

// Interrupt Service Routine for Timer 1 Compare Match A
ISR(TIMER2_COMPA_vect) {
  tCount++;
}