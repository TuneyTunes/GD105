// Scene Variables

// Paddles
int LeftPaddle = 350;
int RightPaddle = 350;
int LeftPaddleSpeed = 6;
int RightPaddleSpeed = 6;

// Square Ball
float SquareX;
float SquareY;
float SquareSpeedX = 2;
float SquareSpeedY = 2;

// Preparing the scene
void setup() {
  size(800, 800); // Window Size
  background(0); // Background Color
  
  // Initial position of square ball
  SquareX = width / 2;
  SquareY = height / 2;
}

// Drawing Objects
void draw() {
  background(0); // Allows clean movement
  
  // Square Ball
  fill(250, 250, 250);
  square(SquareX, SquareY, 40);

  // Left Paddle
  fill(250, 250, 250);
  LeftPaddle = constrain(LeftPaddle, 0, height - 100); // Stops Paddle from moving outside the Window
  rect(0, LeftPaddle, 20, 100);
  
  // Left Paddle Controls
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      LeftPaddle -= LeftPaddleSpeed;
    }
    if (key == 's' || key == 'S') {
      LeftPaddle += LeftPaddleSpeed;
    }
  }
  
  // Right Paddle
  fill(250, 250, 250);
  RightPaddle = constrain(RightPaddle, 0, height - 100); // Stops Paddle from moving outside the Window
  rect(780, RightPaddle, 20, 100);
  
  // Right Paddle Controls
  if (keyPressed) {
    if (keyCode == UP) {
      RightPaddle -= RightPaddleSpeed;
    }
    if (keyCode == DOWN) {
      RightPaddle += RightPaddleSpeed;
    }
  }
  
  // Ball Movement
  SquareX += SquareSpeedX; // Move right
  SquareY += SquareSpeedY; // Move down
  
  // Window collision check
  if (SquareX <= 0 || SquareX >= width - 40) {
    // Reverse the X direction
    SquareSpeedX *= -1;
  }
  
  if (SquareY <= 0 || SquareY >= height - 40) {
    // Reverse the Y direction
    SquareSpeedY *= -1;
  }
}

void keyPressed() {
  // Set Left PaddleSpeed to its positive value when 'W' key is pressed
  if (key == 'w' || key == 'W') {
    LeftPaddleSpeed = 6;
  }
  // Set Left PaddleSpeed to its positive value when 'S' key is pressed
  if (key == 's' || key == 'S') {
    LeftPaddleSpeed = 6;
  }

  // Set Right PaddleSpeed to its positive value when 'UP' key is pressed
  if (keyCode == UP) {
    RightPaddleSpeed = 6;
  }
  // Set Right PaddleSpeed to its positive value when 'DOWN' key is pressed
  if (keyCode == DOWN) {
    RightPaddleSpeed = 6;
  }
}

void keyReleased() {
  // Stop Left Paddle when 'W' or 'S' key is released
  if (key == 'w' || key == 'W' || key == 's' || key == 'S') {
    LeftPaddleSpeed = 0;
  }

  // Stop Right Paddle when 'UP' or 'DOWN' key is released
  if (keyCode == UP || key == DOWN) {
    RightPaddleSpeed = 0;
  }
}
