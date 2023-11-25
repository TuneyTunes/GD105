//declaring variables
float x, y;
float speedX, speedY;

//setting up the canvas
void setup(){
  size(1280, 960);
  x = width / 2;
  y = height / 2;
  speedX = (4);
  speedY = (4);
}

//drawing out the screensaver
void draw(){
  background(0, 0, 0); // background of the image
  
  // Draw a moving ellipse
  fill(random(255), random(255), random(255)); // chooses a random color for the ellipse
  ellipse(x, y, 50, 50); // drawing the ellispe
  
  // Update the position of the ellipse
  x += speedX;
  y += speedY;
  
  // Bounce off the edges of the canvas
  if (x > width || x < 0) {
    speedX *= -1;
  }
  if (y > height || y < 0) {
    speedY *= -1;
  }
}
