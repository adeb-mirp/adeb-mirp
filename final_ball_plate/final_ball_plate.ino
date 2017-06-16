#include<Servo.h>
#include"TouchScreen.h"
#include<PID_v1.h>

int sample_time;
Servo servoX,servoY;
int yP=A0,yM=A2,xP=A1,xM=A3;  //P=(+), M=(-)
double InputY,InputX,OutputY,OutputX,SetpointX=517,SetpointY=561;
int yServoPin=2,xServoPin=3;
int mn=60,mx=120;
double Ki=0.01,Kd=0.04,Kp=0.04;

TouchScreen ts = TouchScreen(xP,yP,xM,yM,711);

PID xpid = PID(&InputX, &OutputX, &SetpointX, Kp, Ki, Kd, REVERSE);
PID ypid = PID(&InputY, &OutputY, &SetpointY, Kp, Ki, Kd, REVERSE);

void setup() {
  // put your setup code here, to run once:
  sample_time=40;
  Serial.begin(9600);
  
  servoX.attach(xServoPin);
  servoY.attach(yServoPin);

  servoX.write(90);
  servoY.write(90);
  
  xpid.SetMode(AUTOMATIC);
  ypid.SetMode(AUTOMATIC);
  
  xpid.SetOutputLimits(mn,mx);
  ypid.SetOutputLimits(mn,mx);

  xpid.SetSampleTime(sample_time);
  ypid.SetSampleTime(sample_time);

  delay(50);
}

void loop() {
  // put your main code here, to run repeatedly:
  TSPoint p=ts.getPoint();
  if((p.z)>ts.pressureThreshhold){
  
      InputX=p.x;
      InputY=p.y;
//      Serial.print("x=");
//      Serial.print(InputX);
//      Serial.print("\t");
//      Serial.print("y=");
//      Serial.println(InputY);
      xpid.Compute();
      ypid.Compute();

      servoX.write(OutputX);
      servoY.write(OutputY);
  }
  else{ 
    servoX.write(90);
    servoY.write(90);
  }
}
