void updateBallVelocity() {
  ballVy =ballVy+ gravity;
  ballVx=ballVx+gravity;
  detectKeys();
}

void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}

void resolveCollisions() {
  if (ballY > displayHeight-ballRadius){
    ballY = displayHeight-ballRadius;
    ballVy = -ballVy;
  }
  if(ballY<ballRadius){
    ballY=ballRadius;
    ballVy=-ballVy;
  }
  
  if(ballX>displayWidth-ballRadius){
    ballX= displayWidth-ballRadius;
    ballVx = -ballVx;
  }
  if(ballX<ballRadius){
    ballX=ballRadius;
    ballVx=-ballVx;
  }
}