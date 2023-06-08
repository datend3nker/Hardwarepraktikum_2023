// Include LCD functions:
#include <LiquidCrystal.h>

// LCD Connection
#define R_S 8
#define E 9
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

void setup()
{
    // Aufgabe 2- 5
    // LCD has 4 lines with 20 chars
    /*
    pinMode(0, INPUT);
    pinMode(1, OUTPUT);
    lcd.begin(NUM_CHAR, NUM_LINES);
    */

   // Aufgabe 6
   /*
   Serial.begin(9600);
   */
}

void loop()
{
    // Set cursor to arbitrary position
    lcd.setCursor(0, 0);
    // Print statements

    // Aufgabe 2
    /*
    lcd.print(("Analog 0:"));
    lcd.setCursor(10, 0);
     lcd.print(analogRead(0));
    */

    // Aufgabe 3
    /*
    lcd.print(("Analog 0:"));
    lcd.setCursor(10, 0);
    lcd.print((analogRead(0) / 1023.0) * 3.3);
    lcd.setCursor(14, 0);
    lcd.print("V");
    */

    // Aufgabe 4

    // Aufgabe 5
    /*
    cd.print(("button:"));
    lcd.setCursor(8, 0);

    if (analogRead(1) < (s1 + TOLERANZ))
    {
        lcd.print("S1");
    }
    else if ((s2 - TOLERANZ) < analogRead(1) && analogRead(1) < (s2 + TOLERANZ))
    {
        lcd.print("S2");
    }
    else if ((s3 - TOLERANZ) < analogRead(1) && analogRead(1) < (s3 + TOLERANZ))
    {
        lcd.print("S3");
    }
    else if ((s4 - TOLERANZ) < analogRead(1) && analogRead(1) < (s4 + TOLERANZ))
    {
        lcd.print("S4");
    }
    else if ((s5 - TOLERANZ) < analogRead(1) && analogRead(1) < (s5 + TOLERANZ))
    {
        lcd.print("S5");
    } else {
        lcd.print("-");
    }
    */

   // Aufgabe 6
   /*
   if (analogRead(1) < (s1 + TOLERANZ))
    {
        Serial.println("S1");
    }
    else if ((s2 - TOLERANZ) < analogRead(1) && analogRead(1) < (s2 + TOLERANZ))
    {
        Serial.println("S2");
    }
    else if ((s3 - TOLERANZ) < analogRead(1) && analogRead(1) < (s3 + TOLERANZ))
    {
        Serial.println("S3");
    }
    else if ((s4 - TOLERANZ) < analogRead(1) && analogRead(1) < (s4 + TOLERANZ))
    {
        Serial.println("S4");
    }
    else if ((s5 - TOLERANZ) < analogRead(1) && analogRead(1) < (s5 + TOLERANZ))
    {
        Serial.println("S5");
    } 
   */

    // Prevent display flickering for too fast updates
    delay(100);
    // Clear the display.
    lcd.clear();
    // NOTE: If you update only parts of the screen, don't use lcd.clear.
    // Set the cursor to the line and column to be updated and override existing chars.
}
