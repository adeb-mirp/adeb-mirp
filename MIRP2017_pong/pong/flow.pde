void rightLose() {
  leftScore+=1;
  ballX=displayWidth/2;
  ballY=displayHeight/2; 
  delay(60); 
}

void leftLose() {
  rightScore+=1;
  ballX=displayWidth/2;
  ballY=displayHeight/2; 
  delay(60);
 }