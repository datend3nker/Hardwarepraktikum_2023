#define LED_PIN 10

void setup(){
    pinMode(LED_PIN, OUTPUT);
}

unsigned long currentTime;
bool Flag = true; // aktueller Status der LED
const unsigned long BLINK_INTERVAL = 1000;  // Intervall für das Blinken in Millisekunden
unsigned long lastBlinkTime = 0;  // Zeitpunkt des letzten Blinkens

void loop() {
    // Aktuelle Zeit abfragen
    unsigned long currentTime = millis();  

    // Prüfen, ob das Intervall für das Blinken abgelaufen ist
    if (currentTime - lastBlinkTime >= BLINK_INTERVAL) {
        if(Flag == 1)
        {
            digitalWrite(LED_PIN, HIGH);
            Flag = 0;
        }
        else 
        {
            digitalWrite(LED_PIN,LOW);
            Flag = 1;
        }
        lastBlinkTime = currentTime;
    }
}
