void setup() {
  size(displayWidth, displayHeight);
  background(bgColor);
  resetGame();
  textFont(createFont("Arial Bold", 50));
  /*playerX=displayWidth/2;
  playerY=displayHeight;*/
}

void draw() {
  background(bgColor);
  drawPlayer();
  updatePlayerPosition();
}

void drawStartScreen() {
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
  playerVx=3;
  playerVy=3;
  // Initialize Player Position and Velocity
  initializePlatforms();
}

void initializePlatforms() {
  // Create Initial Set of Platforms
}

void displayScore() {
  // Show Player Score in a corner
}