void updateBallVelocity() {
  resolveCollisions();
  ballCollisions();
  // Detect Ball collisions with walls or paddles
  // If collide with paddle, or top/bottom wall, then bounce off
  // If collides with left wall, right player gains one point
  // If collides with right wall, left player gains one point
}

void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}

void updatePaddlePositions() {
  if(left_up)
    leftPaddleY=leftPaddleY-PADDLE_VELOCITY;
  if(left_down)
    leftPaddleY=leftPaddleY+PADDLE_VELOCITY;
  if(right_up)
    rightPaddleY=rightPaddleY-PADDLE_VELOCITY;
  if(right_down)
    rightPaddleY=rightPaddleY+PADDLE_VELOCITY;
  if(leftPaddleY<0)
    leftPaddleY=0;
  if(leftPaddleY>(displayHeight-paddleLength))
    leftPaddleY=(displayHeight-paddleLength);
  if(rightPaddleY<0)
    rightPaddleY=0;
  if(rightPaddleY>(displayHeight-paddleLength))
    rightPaddleY=(displayHeight-paddleLength);
  // Based on the keys pressedd, move the paddles (update Y position)
  // Make sure the paddles don't leave the screen
}
void resolveCollisions(){
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
void ballCollisions(){
  if((ballX<(ballRadius+paddleWidth))&&((ballY>leftPaddleY)&&(ballY<(leftPaddleY+paddleLength)))){
    ballX=ballRadius+paddleWidth;
    ballVx=-ballVx;
  }
  else if((ballX<(ballRadius+paddleWidth))&& !((ballY>leftPaddleY)&&(ballY<(leftPaddleY+paddleLength))) ){
    leftLose();
  }
  if((ballX>(displayWidth-(ballRadius+paddleWidth)))&&((ballY>rightPaddleY)&&(ballY<(rightPaddleY+paddleLength)))){
    ballX=(displayWidth-paddleWidth)-ballRadius;
    ballVx=-ballVx;
  }
  else if((ballX>(displayWidth-(ballRadius+paddleWidth)))&& !((ballY>rightPaddleY)&&(ballY<(rightPaddleY+paddleLength))) ){
    rightLose();
  }
}

  