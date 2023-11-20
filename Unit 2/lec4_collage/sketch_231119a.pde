// declaring local variables
PImage jerma;
PFont TimesNewRoman;

// Setting up all elements of the image
void setup(){
  size(640, 628);
  noStroke();
  
  // initializing image and font
  jerma = loadImage("jerma.png");
  TimesNewRoman = loadFont("TimesNewRomanPS-ItalicMT-48.vlw");
}

void draw(){
  // drawing the background for my masterpiece
  background(255); // White background
  drawBackground();
  
  // summon thy holy image
  scale(1.0);
  image(jerma, 50, 15);
  resetMatrix();
  
  // draw and color text
  textFont(TimesNewRoman);
  fill(#ff00a7);
  text("Sparkle on!", 200, 500);
  text("Don't forget to be yourself!", 80, 570);
}

void drawBackground(){
  // Constructing a background of doom
  // First triangle (top-left)
  fill(255, 0, 0); // Red
  triangle(0, 0, 320, 0, 0, 314);

  // Second triangle (top-right)
  fill(0, 255, 0); // Green
  triangle(640, 0, 320, 0, 640, 314);

  // Third triangle (bottom-left)
  fill(0, 0, 255); // Blue
  triangle(0, 628, 0, 314, 320, 628);

  // Fourth triangle (bottom-right)
  fill(255, 255, 0); // Yellow
  triangle(640, 628, 640, 314, 320, 628);
}
