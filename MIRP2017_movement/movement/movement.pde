int displayWidth=800, displayHeight=500;

float MAX_VELOCITY = 6;

float bgColor = 255;

float gravity = 0.0;
float ballX, ballY;
float ballVx = 0, ballVy = 0;
float ballRadius = 10;
color ballColor = color(100, 180, 70, 150);

float restitutionCoeff = 0.95;

char UP = 'w', LEFT = 'a', RIGHT = 'd',DOWN='s';
boolean up, left, right,down;

boolean keys[] = new boolean [4];

void setup() {
  size(displayWidth, displayHeight);
  ballX=displayWidth/2;
  ballY=displayHeight/2;
  ballVx = 3;
  ballVy = 3;
}

void draw() {
  background(bgColor);
  drawBall();
  updateBallVelocity();
  updateBallPosition();
  resolveCollisions();
  speedLimit();
}

void drawBall() {
  fill(ballColor);
  ellipse(ballX, ballY, 2*ballRadius, 2*ballRadius);
}