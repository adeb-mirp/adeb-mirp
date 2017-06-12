void updatePlayerVelocity() {
  playerVy+=gravity;
  playerVy-=dragCoeff;
  // Update Player Velocities according to keys pressed
  // Apply Gravity and Air Drag
}

void updatePlayerPosition() {
  playerX += playerVx;
  playerY += playerVy;
  // If Player falls out of side of screen, enter from opposite side
}

void updatePositions() {
  // If the player goes into the top half of screen
  // Move the view upwards
  // This is also when you should generate new platforms
}

void resolveCollisions() {
  if(playerY>(displayHeight-playerRadius)){
    playerY=(displayHeight-playerRadius);
    playerVy*=-restitutionCoeff;
  }
  // Collisions only happen when the player is falling
  // If Player lands on a platform, bounce off with PLAYER_VERT_VELOCITY
}