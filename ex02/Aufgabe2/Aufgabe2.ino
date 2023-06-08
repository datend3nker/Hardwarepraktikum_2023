#define LMR D1 // A1
#define LMF D2 // A2
#define RMF D3 // B1
#define RMR D4 // B2

void setMotor(bool forward, uint16_t speed)
{
    
    if (forward)
    {
        // move foward
        analogWrite(LMF, speed);
        analogWrite(LMR, 0);
    }
    else
    {
        // move backwards
        analogWrite(LMF, 0);
        analogWrite(LMR, speed);
    }
}

void setup()
{
    pinMode(LMF, OUTPUT);
    pinMode(LMR, OUTPUT);
}

void loop()
{
    setMotor(false, 1000);
}
