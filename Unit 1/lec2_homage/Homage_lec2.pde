// This program recreates
// Josef Ablers "Warm Welcome"
// Using shapes and colour
// reference >> https://tinyurl.com/homage2thesquarelec


// setup is 960 px by 960 px to re-create a 10 inch canvas
void setup()  {
size(960,960);
}

void draw() {
background(#72191f);                     // background is filled with color of square 4

// definition of all points
PVector point1 = new PVector(0,0);
PVector point2 = new PVector(100, 150);
PVector point3 = new PVector(200,300);
PVector point4 = new PVector(300,450);

// drawing the squares
noStroke();                               // no need for strokelines in this re-creation
square(point1.x, point1.y, 960);          // (x,y,z) defines how big the square is
fill(#62281d);                            // square #1

square(point2.x, point2.y, 760);          // square #2
fill(#b37a29);

square(point3.x, point3.y, 560);          // square #3
fill(#d87d20);

square(point4.x, point4.y, 360);          // square #4 
noFill();

// this saves the canvas on the first frame
// so we can get a clean image of the output easily
  if(frameCount == 1) {
    String filename = "AlbersHomage";
    save(filename + ".png");
    print("image saved as " + filename + ".png");
  }
