#define TOLERANZ 10

int s1 = 1;
int s2 = 244;
int s3 = 475;
int s4 = 675;
int s5 = 830;

void setup() {
    Serial.begin(9600);
}

void loop(){
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
}