void setup() {
  size(displayWidth, displayHeight);
  background(bgColor);
  resetGame();
  textFont(createFont("Arial Bold", 50));
  playerX=displayWidth/2;
  playerY=displayHeight-displayHeight/3;
  playerVx=0;
  playerVy=0;
  
}

void draw() {
  background(bgColor);
  drawPlayer();
  drawStartScreen();
}

void drawStartScreen() {
  updatePlayerPosition();
  updatePlayerVelocity();
  resolveCollisions();
}

void drawLoseScreen() {
}

void drawGameScreen() {
}

void drawPlayer() {
  ellipse(playerX,playerY,playerRadius*2,playerRadius*2);
  
}

void drawPlatforms() {
}

void resetGame(){
  // Initialize Player Position and Velocity
  initializePlatforms();
}

void initializePlatforms() {
  // Create Initial Set of Platforms
}

void displayScore() {
  // Show Player Score in a corner
}