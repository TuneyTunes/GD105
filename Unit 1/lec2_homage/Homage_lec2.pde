// This program recreates
// Josef Ablers "Warm Welcome"
// Using shapes and colour
// reference >> https://tinyurl.com/homage2thesquarelec
// setup is 960 px by 960 px to re-create a 10 inch canvas
void setup() {
  size(960, 960);
}

void draw() {
  background(#72191f);

  PVector point1 = new PVector(0, 0);
  PVector point2 = new PVector(100, 150);
  PVector point3 = new PVector(200, 300);
  PVector point4 = new PVector(300, 450);

  noStroke();

  fill(#52101d);
  square(point1.x, point1.y, 960);

  fill(#62281d);
  square(point2.x, point2.y, 760);

  fill(#b37a29);
  square(point3.x, point3.y, 560);

  fill(#d87d20);
  square(point4.x, point4.y, 360);

  // Save the canvas on the first frame
  if (frameCount == 1) {
    String filename = "AlbersHomage";
    save(filename + ".png");
    print("image saved as " + filename + ".png");
    noLoop(); // Stop the draw loop after saving the image
  }
}
