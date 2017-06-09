// Display Size
int displayWidth=800, displayHeight=600;

// Velocity Cnstants
float BALL_VELOCITY = 10; //This is the MAX speed of the ball.
float PADDLE_VELOCITY = 10;

// Background Color
int bgColor = 0;

// Ball parameters
float ballX, ballY;
float ballVx=BALL_VELOCITY, ballVy;
// ballVx is always BALL_VELOCTY or -BALL_VELOCITY; ballVy varies.
float ballRadius = 10;
int ballColor=255;

// Y - position of Left and Right paddles
float leftPaddleY=displayHeight/3, rightPaddleY=displayHeight/3;
// Paddle Dimensions
float paddleLength = 150, paddleWidth = 20;
float leftPaddleX=0, rightPaddleX=(displayWidth-paddleWidth);
int paddleColor=255;
float paddleRadius=7;
float leftPaddle;
float rightPaddle;
// Score Variables
int leftScore=0, rightScore=0;

// Controls for the Left Paddle
char LEFT_UP = 'q', LEFT_DOWN = 'a';

// Controls for the Right Paddle
char RIGHT_UP = 'o', RIGHT_DOWN = 'l';

// Game Controls
char RESET = 'r', PAUSE = 'p', START = 's';

// Keyoard Handling Booleans
boolean left_up, right_up, left_down, right_down;
boolean reset, pause, start;