// Declaring variables
PGraphics pattern;

// Setting up the canvas
void setup(){
  size(800, 800);
  
  // Creating a PGraphics canvas for the pattern
  int patternWidth = 100;
  int patternHeight = 100;
  pattern = createGraphics(patternWidth, patternHeight);

  // Initialize the pattern canvas
  pattern.beginDraw();
  pattern.background(#1FE0B3);
  pattern.stroke(1);
  pattern.strokeWeight(5);
  pattern.noFill();
  pattern.rect(10, 10, patternWidth - 20, patternHeight - 20);
  pattern.rect(30, 20, patternWidth - 20, patternHeight - 30);
  pattern.endDraw();
}

// Drawing on my canvas
void draw(){

  // Displaying the pattern across the main canvas
  for (float x = 0; x < width; x += pattern.width) {
    for (float y = 0; y < height; y += pattern.height) {
      image(pattern, x, y);
    }
  }
}
