int totalFrames = 50;
int gifDuration = 6; // in seconds
int frameRate = totalFrames * 2;
int gifSize = 8; // in megabytes
int ballSize = 20;
float ballX, ballY, ballSpeedY;

void setup() {
  size(240, 240);
  frameRate(frameRate);
  noStroke();
  ballX = width / 2;
  ballY = height / 2;
  ballSpeedY = 5;
}

void draw() {
  background(255);
  drawBall();
  moveBall();

  // Save frames
  if (frameCount <= totalFrames) {
    saveFrame("output/frame_######.png");
  } else {
    exit();
  }
}

void drawBall() {
  fill(0, 0, 255);
  ellipse(ballX, ballY, ballSize, ballSize);
}

void moveBall() {
  ballY += ballSpeedY;

  // Bounce off the top and bottom
  if (ballY - ballSize / 2 < 0 || ballY + ballSize / 2 > height) {
    ballSpeedY *= -1;
  }
}
