float previousError = 0.0, currentError;
float angleError = 0.02;

void solution (){
  currentError= desiredX-ballX;
  float Kp = 0.0004;
  float Kd=0.009;
  int dt=1;
  float derivative=(currentError-previousError)/dt;
  float angleVal=currentError*Kp+derivative*Kd;
  gotoAngle(angleVal);
  previousError=currentError;
}