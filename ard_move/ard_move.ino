#include<Servo.h>
int yServoPin=2;
int xServoPin=3;
Servo servoX,servoY;
int mn=60,mx=120;
void setup() {
  // put your setup code here, to run once:
  servoX.attach(xServoPin);
  servoY.attach(yServoPin);
}

void loop() {
  // put your main code here, to run repeatedly:
  for(int i=mn;i<mx;++i){
    servoX.write(i);
    servoY.write(i);
    delay(40);
  }
  for(int j=mx;j>mn;--j){
    servoX.write(j);
    servoY.write(j);
    delay(40);
  }
}
