void keyPressed() {
  if (key == UP)       up = true;
  if (key == LEFT)     left = true;
  if (key == RIGHT)    right = true;
  if (key==DOWN)       down=true;
}

void keyReleased() {
  if (key == UP)       up = false;
  if (key == LEFT)     left = false;
  if (key == RIGHT)    right = false;
  if (key==DOWN)       down=false;
}

float positionIncrement = 0.5;
float positionDecrement=1.0;

void detectKeys() {
  println(ballRadius);
  if (left)
    ballVx-= positionIncrement;
    
  if (right) 
    ballVx+= positionIncrement;
    
  if(up)
    ballVy-= positionIncrement;
    
  if(down)
    ballVy+= positionIncrement;
}
void speedLimit(){
  if(ballVx>MAX_VELOCITY){
    ballVx-= positionDecrement;
  }
  if(ballVy>MAX_VELOCITY){
    ballVy-= positionDecrement;
  }
}