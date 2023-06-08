// Include LCD functions:
#include <LiquidCrystal.h>

// LCD Connection
#define R_S 8
#define E   9
#define DB4 10
#define DB5 11
#define DB6 12
#define DB7 13

// LCD Defines
#define NUM_CHAR 20
#define NUM_LINES 4

// Global variables
// Define the LCD screen
LiquidCrystal lcd(R_S, E, DB4, DB5, DB6, DB7);

void setup() {
  // LCD has 4 lines with 20 chars
  pinMode(0, INPUT);
  pinMode(1, OUTPUT);
  lcd.begin(NUM_CHAR, NUM_LINES);
}


void loop() {
  // Set cursor to arbitrary position
  lcd.setCursor(0, 0);
  // Print statements
  lcd.print(("Analog 0:"));
  lcd.setCursor(10,0);
  lcd.print(analogRead(0));

  // Prevent display flickering for too fast updates
  delay(100);
  // Clear the display.
  lcd.clear();
  // NOTE: If you update only parts of the screen, don't use lcd.clear.
  // Set the cursor to the line and column to be updated and override existing chars.
}
