#define LMR D1 // A1
#define LMF D2 // A2
#define RMF D3 // B1
#define RMR D4 // B2

void setMotor(bool forward)
{
    if (forward)
    {
        // move foward
        digitalWrite(LMF, HIGH);

        digitalWrite(LMR, LOW);

    }
    else
    {
        // move backwards
        digitalWrite(LMF, LOW);

        digitalWrite(LMR, HIGH);

    }
}

void setup()
{
    pinMode(D1, OUTPUT);
    pinMode(D2, OUTPUT);
}

void loop()
{
    setMotor(false);
}
