void setup() {
  size(displayWidth, displayHeight);
  resetGame();
  textFont(createFont("Arial Bold", 50));
  ballX=displayWidth/2;
  ballY=displayHeight/2;
}

void draw() {
  drawGameScreen();
}

void drawGameScreen() {
  if(reset)
  resetGame();
  background(bgColor);
  drawBall();
  updateBallPosition();
  updateBallVelocity();
  drawPaddles();
  updatePaddlePositions();
  displayScores();
  if (leftScore==10){
  text("Left Wins!",30,300);
  resetGame();
  }
  if (rightScore==10){
  text("Right Wins!",430,300);
  resetGame();
  }
  // Draw background
  // Update Ball Velocity and Resolve Collisions
  // Update Ball and Paddle Positions
  // Draw Ball and Paddles
  // Display Scores
}

void drawBall() {
  ellipse(ballX,ballY,ballRadius*2,ballRadius*2);
  fill(ballColor);
  // Display Ball in correct position
}

void drawPaddles() {
  rect(leftPaddleX,leftPaddleY,paddleWidth,paddleLength,paddleRadius);
  rect(rightPaddleX,rightPaddleY,paddleWidth,paddleLength,paddleRadius);
  // Display Left and Right paddles in correct position
}

void resetGame(){
  ballX=displayWidth/2;
  ballY=displayHeight/2;
  leftPaddleY=displayHeight/3; 
  rightPaddleY=displayHeight/3;
  leftPaddleX=0; 
  rightPaddleX=(displayWidth-paddleWidth);
  ballVx=BALL_VELOCITY; 
  ballVy=0;
  // Reset Ball and Paddle Positions
  // Reset Ball Velocity
}

void displayScores() {
  text(leftScore,100,200);
  text(rightScore,700,200);
  // Display Left and Right player Scores
}