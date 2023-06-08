#define LMR D1 // A1
#define LMF D2 // A2
#define RMF D6 // B1
#define RMR D5 // B2

int fl = 1;

void setMotor(bool forward, uint16_t speed, char motor)
{
    if (motor == 'L')
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
    else if (motor == 'R')
    {
        if (forward)
    {
        // move foward
        analogWrite(RMF, speed);
        analogWrite(RMR, 0);
    }
    else
    {
        // move backwards
        analogWrite(RMF, 0);
        analogWrite(RMR, speed);
    }
    }
}

void drive(bool flag, uint16_t sp, int t){
    if (flag)
    {
      setMotor(flag, sp, 'L');
      setMotor(flag, sp, 'R');
      }
      else if (!flag)
    {
      setMotor(flag, sp, 'L');
      setMotor(flag, sp, 'R');
    }
      delay(t);
      setMotor(flag, 0, 'L');
      setMotor(flag, 0, 'R');
      setMotor(!flag, 0, 'L');
      setMotor(!flag, 0, 'R');
  }

void setup()
{
    pinMode(LMF, OUTPUT);
    pinMode(LMR, OUTPUT);

    pinMode(RMF, OUTPUT);
    pinMode(RMR, OUTPUT);
}

void loop()
{
    drive(true, 500, 2);

}