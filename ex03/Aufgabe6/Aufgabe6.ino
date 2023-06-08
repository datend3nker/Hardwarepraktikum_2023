#define SERIAL_SPEED 9600
#define A_PIN 12 // PB4

volatile uint32_t tCount;
volatile uint8_t melodyIdx = 0;

struct Note {
  int duration;   // Duration of the note in milliseconds
  int frequency;  // Frequency of the note in Hertz
};

Note notes[] = {
  {400, 262},   // C4
  {400, 294},   // D4
  {400, 330},   // E4
  {400, 262},   // C4
  {400, 262},   // C4
  {400, 294},   // D4
  {400, 330},   // E4
  {400, 262},   // C4
  {400, 330},   // E4
  {400, 349},   // F4
  {400, 392},   // G4
  {400, 392},   // G4
  {400, 349},   // F4
  {400, 330},   // E4
  {400, 330},   // E4
  {800, 262},   // C4
};

void setup() {
  //Serial.begin(38400, SERIAL_8E1);
  
  // Pin 12 als ausgabe definieren
  DDRB |= (1<<PB4);
  PORTB &=~(1<<PB4);
  
  playMelody();
  //Serial.print("setup done");
}

void loop() {
}

void playMelody() {
  setTimer2(true);
  if (notes[melodyIdx].duration <= tCount) {
    tCount = 0;
    melodyIdx++;
    if (melodyIdx >= sizeof(notes) / sizeof(Note)) {
      setTimer2(false);
      melodyIdx = 0;
      tCount = 0;
    }
    setTimer1Freq(notes[melodyIdx].frequency);
  }
}

void setTimer1Freq(int freq) {
  // setup der clock
  TCCR1A = 0;
  TCCR1B = 0;
  TCCR1B |= (1 << WGM12); // enter CTC mode
  TCCR1B |= (1 << CS12) | (1 << CS10);

  OCR1A = 16000000 / (2.0 * 1024 * freq) - 1; // berechnet sich aus F_CPU / (2 * PRESCALER * FREQ) - 1
  TIMSK1 |= (1 << OCIE1A);  // stellt den trigger für die isr ein
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

ISR(TIMER1_COMPA_vect) {
  PINB |= (1 << PB4);
}