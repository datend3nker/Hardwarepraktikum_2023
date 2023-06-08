#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <LiquidCrystal.h>

#define TOLERANZ 10
#define TR_PIN 0
#define BUTTON 1

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

int s1 = 1;

float periode = 0;
// Global variables
// Define the LCD screen
LiquidCrystal lcd(R_S, E, DB4, DB5, DB6, DB7);

int buttonState = HIGH;             // Variable zum Speichern des aktuellen Zustands des Tasters
int lastButtonState = HIGH;         // Variable zum Speichern des vorherigen Zustands des Tasters
unsigned long lastDebounceTime = 0; // Variable zum Speichern der letzten Zeit, zu der der Taster gedrückt wurde
unsigned long debounceDelay = 50;   // Zeit für die Entprellung in Millisekunden


bool Flag = true;                          // aktueller Status der LED
unsigned long lastBlinkTime = 0;           // Zeitpunkt des letzten Blinkens
int random_number = rand() % 3;

void setup()
{
    pinMode(TR_PIN, INPUT);
    pinMode(BUTTON, INPUT);

    // LED Pins
    pinMode(2, OUTPUT);
    pinMode(3, OUTPUT);

    pinMode(4, OUTPUT);
    pinMode(5, OUTPUT);

    pinMode(6, OUTPUT);
    pinMode(7, OUTPUT);

    lcd.begin(NUM_CHAR, NUM_LINES);
    Serial.begin(9600);
}

void blink(int p1, int p2, int period)
{
    // Aktuelle Zeit abfragen
    unsigned long currentTime = millis();  

    // Prüfen, ob das Intervall für das Blinken abgelaufen ist
    if (currentTime - lastBlinkTime >= period/2) {
        if(Flag == 1)
        {
            digitalWrite(p1, HIGH);
            digitalWrite(p2,LOW);
            Flag = 0;
        }
        else 
        {
            digitalWrite(p2, HIGH);
            digitalWrite(p1,LOW);
            Flag = 1;
        }
        lastBlinkTime = currentTime;
    }
}

bool buttonPressed()
{
    bool buttonPressed = false;       // Initialisiere die Variable auf "nicht gedrückt"
    int reading = analogRead(BUTTON); // Lese den aktuellen Zustand des Tasters
    if (reading < (s1 + TOLERANZ))
    { // Wenn der Taster gedrückt ist
        if (buttonState == HIGH && (millis() - lastDebounceTime) > debounceDelay)
        {                                // Wenn der Taster zuvor nicht gedrückt wurde und genügend Zeit für die Entprellung vergangen ist
            lastDebounceTime = millis(); // Speichere die aktuelle Zeit als letzte Zeit, zu der der Taster gedrückt wurde
            buttonState = LOW;           // Setze den Tasterzustand auf "gedrückt"
            buttonPressed = true;        // Setze die Variable auf true, um anzuzeigen, dass der Knopf gedrückt wurde
        }
    }
    else
    {                       // Wenn der Taster nicht gedrückt ist
        buttonState = HIGH; // Setze den Tasterzustand auf "nicht gedrückt"
    }
    // Entprellung: Wenn der aktuelle Tasterzustand sich vom vorherigen Zustand unterscheidet und genügend Zeit für die Entprellung vergangen ist, speichere den aktuellen Zustand als letzten Zustand
    if (buttonState != lastButtonState && (millis() - lastDebounceTime) > debounceDelay)
    {
        lastButtonState = buttonState;
    }
    return buttonPressed; // Gib zurück, ob der Knopf gedrückt wurde
}

int new_random_number(int random_number)
{
    int new_rand = rand() % 3;
    while (new_rand == random_number) {
        new_rand = rand() % 3;
    }
    return new_rand;
}

void loop()
{
    periode = map(analogRead(TR_PIN), 0, 1023, 0, 50.0);
    lcd.setCursor(0,0);
    lcd.print(("%d      ",periode));

    if (buttonPressed()) {
        random_number = new_random_number(random_number);
        for (int i = 2; i <= 7; i++ ) {
            digitalWrite(i, LOW);
        }
    }
    int p1;
    int p2;
    switch (random_number)
    {
    case 0:
        p1 = 2;
        p2 = 3;
        break;
    case 1:
        p1 = 4;
        p2 = 5;
        break;
    case 2:
        p1 = 6;
        p2 = 7;
        break;
    }
    blink(p1, p2, ((1/periode) * 1000));
}
