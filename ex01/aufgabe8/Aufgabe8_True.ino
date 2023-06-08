#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <LiquidCrystal.h>

#define TOLERANZ 15
#define TR_PIN 1
#define BUTTON 0

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
int flag = 1;
int Dflag = 0;
float frequency;
int LEDnum;

unsigned long currentTime;


unsigned int periode;
// Global variables
// Define the LCD screen
LiquidCrystal lcd(R_S, E, DB4, DB5, DB6, DB7);

void setup() {
   
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
    
}

void loop(){
    frequency = map(analogRead(0), 0, 1023, 1.0, 50.0);
    periode = 500 / (analogRead(0) / 1023.0 * 50.0);

    lcd.setCursor(0,3);
    lcd.print("Freq:     Hz");
    lcd.setCursor(5,3);
    lcd.print(frequency);
    
    
    if (Dflag == 1){
        Dflag = 0;
        if (flag == 1){
          flag = 2;
        } else {flag = 1;}
    }

    if (flag == 1){
      if (LEDnum == 7){
        LEDnum = 2;
      } else {LEDnum += 1;}
    }

    if (flag == 2){
      if (LEDnum == 2){
        LEDnum = 7;
      } else {LEDnum -= 1;}
    }

      
    digitalWrite(LEDnum,HIGH);

    if (LEDnum == 2 || LEDnum == 3){
        lcd.setCursor(0,2);
        lcd.print("Color: ");
        lcd.setCursor(6,2);
        lcd.print("Green");
    } else if (LEDnum == 4 || LEDnum == 5){
        lcd.setCursor(0,2);
        lcd.print("Color: ");
        lcd.setCursor(6,2);
        lcd.print("Yellow");}
      else if(LEDnum == 6 || LEDnum == 7){
        lcd.setCursor(0,2);
        lcd.print("Color: ");
        lcd.setCursor(6,2);
        lcd.print("Red");}

    currentTime = millis();

    while (!(millis() - currentTime >= periode) && Dflag == 0){
      if (analogRead(1) < 15 && analogRead(1) > 0){
        Dflag = 1;
        break;}
      }


    digitalWrite(2,LOW);
    digitalWrite(3,LOW);
    digitalWrite(4,LOW);
    digitalWrite(5,LOW);
    digitalWrite(6,LOW);
    digitalWrite(7,LOW);

    currentTime = millis();


    while (!(millis() - currentTime >= periode) && Dflag == 0){
      if (analogRead(1) < 15 && analogRead(1) > 0){
        Dflag = 1;
        break;}
      }

    lcd.clear();
    
    if (Dflag == 1){
      delay(1000);}

}
