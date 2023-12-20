// Inspiration >> https://www.artsy.net/artwork/josef-albers-sp-j
int rows = 5;
int cols = 5;
color[][] rectangleColors;

void setup() {
  size(400, 400);
  rectangleColors = new color[rows][cols];

  // Initialize colors array with set colors
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      // Specify set colors for rectangles
      if ((i + j) % 2 == 0) {
        rectangleColors[i][j] = color(255, 0, 0);  // Red
      } else {
        rectangleColors[i][j] = color(200, 0, 0);  // Blue
      }
    }
  }

  noLoop(); // Run draw loop only once
}

void draw() {
  background(255);

  float rectWidth = width / cols;
  float rectHeight = height / rows;

  // Draw rectangles based on the colors array
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      float x = j * rectWidth;
      float y = i * rectHeight;
      fill(rectangleColors[i][j]);
      rect(x, y, rectWidth, rectHeight);
    }
  }

  // Save the canvas on the first frame
  if (frameCount == 1) {
    String filename = "Albers-Inspired";
    save(filename + ".png");
    println("Image saved as " + filename + ".png");
  }
}
