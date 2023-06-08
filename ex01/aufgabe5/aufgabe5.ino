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

#define TOLERANZ 10

int s1 = 1;
int s2 = 244;
int s3 = 475;
int s4 = 675;
int s5 = 830;

// Global variables
// Define the LCD screen
LiquidCrystal lcd(R_S, E, DB4, DB5, DB6, DB7);

void setup()
{
    // LCD has 4 lines with 20 chars
    pinMode(1, INPUT);
    lcd.begin(NUM_CHAR, NUM_LINES);
}

void loop()
{
    // Set cursor to arbitrary position
    lcd.setCursor(0, 0);
    // Print statements
    lcd.print(("button:"));
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

    // Prevent display flickering for too fast updates
    delay(100);
    // Clear the display.
    lcd.clear();
    // NOTE: If you update only parts of the screen, don't use lcd.clear.
    // Set the cursor to the line and column to be updated and override existing chars.
}