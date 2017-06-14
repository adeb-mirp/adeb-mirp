void setup() {
int Ki,Kd,Kp;
int setpoint;
int actual_position;
int dt; //set time step
int previous_error=0;
}
void loop() {
  int error=setpoint-actual_position;
  //error and proportional are the same thing here
  int integral=integral+error*dt;
  int derivative=(error-previous_error)/dt;
  int output=Kp*error+Ki*integral+Kd*derivative;
  previous_error=error;
}
