void setup() {
  size(displayWidth, displayHeight);
  resetGame();
  textFont(createFont("Arial Bold", 50));
  ballX=displayWidth/2;
  ballY=displayHeight/2;
  ballVx=3;
  ballVy=3;
}

void draw() {
  drawGameScreen();
}

void drawGameScreen() {
  background(bgColor);
  drawBall();
  updateBallPosition();
  updateBallVelocity();
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
  // Display Left and Right paddles in correct position
}

void resetGame(){
  // Reset Ball and Paddle Positions
  // Reset Ball Velocity
}

void displayScores() {
  // Display Left and Right player Scores
}