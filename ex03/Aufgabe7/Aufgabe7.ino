/// da leider 2 aus unserem team keine Kentnisse über C verfügen, haben wir es leider nicht geschafft, die Nr 7
// fertig zu stellen.
// Die Nr 7 wurde nicht auf Funktionsfähigkeit überprüft. Hierbei handelt es sich
// lediglich um unsere Überlegungen...


#define SERIAL_SPEED 9600
#define A_PIN 12 // PB4

#define C4 261
#define D4 293
#define E4 329
#define F4 349
#define G4 392
#define A4 440
#define B4 493
#define PAUSE 0


volatile uint32_t tCount;
volatile uint8_t melodyIdx = 0;
char buffer[] = "Bgirl:d=4,o=5,b=125:8g#,8e,8g#,8c#6,a,p,8f#,8d#,8f#,8b,g#,8f#,8e,p,8e,8c#,f#,c#,p,8f#,8e,g#,f#";

struct Note {
  int duration;   // Duration of the note in milliseconds
  int frequency;  // Frequency of the note in Hertz
};

Note* notes;

void setup() {
  //Serial.begin(38400, SERIAL_8E1);
  
  // Pin 12 als Ausgabe definieren
  DDRB |= (1 << PB4);
  PORTB &= ~(1 << PB4);
  
  parseRTTTL(buffer);
  playMelody();
  //Serial.print("setup done");
}

void loop() {
}

// Check if the given character is a valid digit
bool charIsDigit(char c) {
  // '0' - '9' are ASCII encoded
  if (c < '0' || c > '9') return false;
  return true;
}

// convert the digits at the current and following
// buffer position idx into an unsigned integer
uint16_t str2uint(char *buffer, uint16_t *idx) {
  uint16_t val = 0;
  // while character is a valid digit
  while (charIsDigit(buffer[*idx])) {
    // '0' is 48 ASCII encoded, '1' is 49, etc.
    val = (val * 10) + (buffer[*idx] - '0');
    // increment index (* needed to address pointer)
    *idx = *idx + 1;
  }
  return val;
}

void parseRTTTL(const char* rtttl) {
  // Example of parsing optional standard duration
  uint16_t idx = 0;
  uint16_t standardDuration = 4; // Default standard duration
  if (rtttl[idx] == 'd') {
    idx += 2; // skip 'd' + '='
    if (isdigit(rtttl[idx])) {
      standardDuration = rtttl[idx++] - '0';
    }
    idx++; // Skip comma
  }

  // Count the number of notes in the RTTTL string
  uint16_t noteCount = 0;
  while (rtttl[idx] != '\0') {
    if (charIsDigit(rtttl[idx])) {
      noteCount++;
      idx++;
    } else {
      switch (rtttl[idx]) {
        case 'C': case 'D': case 'E': case 'F': case 'G': case 'A': case 'B': case 'P':
          noteCount++;
          idx++;
          break;
        case '#':
          idx++;
          break;
        case '.':
        case ',':
          idx++;
          break;
        default:
          return; // Invalid character encountered
      }
    }
  }

  // Allocate memory for the notes array
  notes = (Note*)malloc(noteCount * sizeof(Note));

  // Reset the index and parse the RTTTL notes
  idx = 0;
  uint16_t noteIdx = 0;
  while (rtttl[idx] != '\0') {
    int duration = standardDuration;
    int octave = 5; // Default octave
    bool sharp = false;
    int note = 0;

    // Parse the note duration
    if (isdigit(rtttl[idx])) {
      duration = rtttl[idx++] - '0';
    }

    // Parse the note
    switch (rtttl[idx]) {
      case 'C': note = C4; break;
      case 'D': note = D4; break;
      case 'E': note = E4; break;
      case 'F': note = F4; break;
      case 'G': note = G4; break;
      case 'A': note = A4; break;
      case 'B': note = B4; break;
      case 'P': note = PAUSE; break;
    }
    idx++;

    // Check for sharp note
    if (rtttl[idx] == '#') {
      sharp = true;
      idx++;
    }

    // Parse the octave
    if (isdigit(rtttl[idx])) {
      octave = rtttl[idx++] - '0';
    }

    // Calculate the note frequency based on the octave and sharp status
    int frequency = note * pow(2, octave - 4);
    if (sharp) {
      frequency *= pow(2, 1.0 / 12);
    }

    // Add the note to the notes array
    notes[noteIdx].duration = duration * standardDuration;
    notes[noteIdx].frequency = frequency;

    noteIdx++;

    // Skip delimiter (comma or dot)
    if (rtttl[idx] == '.' || rtttl[idx] == ',') {
      idx++;
    }
  }
}


void playMelody() {
  setTimer2(true);
  if (notes[melodyIdx].duration <= tCount) {
    tCount = 0; // setze timer zurück
    melodyIdx++; // eine note weiter gehen
    if (melodyIdx >= sizeof(notes) / sizeof(Note)) {
      // beende timer ind setze werte zurück
      setTimer2(false);
      melodyIdx = 0;
      tCount = 0;
    }
    // spiele den ton nur, wenn sich zustand ändert
    // verhindert 'unreinen' ton
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

// Interrupt Service Routine for Timer 2 Compare Match A
ISR(TIMER2_COMPA_vect) {
  tCount++; // counter um 1 milisekunde erhöhen
}

ISR(TIMER1_COMPA_vect) {
  PINB |= (1 << PB4); // invertiere den aktuellen zustand
}
