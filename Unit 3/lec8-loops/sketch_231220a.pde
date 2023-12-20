void setup() {
  size(400, 400);
  background(255);
  randomSeed(42); // Set a specific seed for reproducibility
  drawShapes();
}

void drawShapes() {
  // Using do-while loop
  int i = 0;
  do {
    fill(random(255), random(255), random(255));
    ellipse(random(width), random(height), 30, 30);
    i++;
  } while (i < 35);

  // Using while loop
  int j = 0;
  while (j < 35) {
    fill(random(255), random(255), random(255));
    rect(random(width), random(height), 20, 20);
    j++;
  }

  // Using for loop
  for (int k = 0; k < 35; k++) {
    fill(random(255), random(255), random(255));
    triangle(random(width), random(height), random(width), random(height), random(width), random(height));
  }
}
