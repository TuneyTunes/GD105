// This program re-creates Saskia Freeke "220302"
// reference >> https://tinyurl.com/SF220302

void setup() {
size(1500,1024);
}

void draw() {
background(250); // white canvas

// moves the origin point to the center
translate(width/2, height/2);

// preparation
noFill(); // all shapes will not be filled until needed
strokeWeight(4); // consistent stroke weight for all shapes

// shapes layered under others
stroke(#73d2de);
square(-675, -448, 68);
triangle(-543,-218,-675,-219,-676,-406);

// purple triangles
stroke(#3d2645); // stroke colour of shape
triangle(350,25,78,26,80,285);
triangle(-50,104,253,224,-52,227);
triangle(-430,-406,-723,-409,-428,-192);
triangle(-542,0,-685,0,-674,73); 

// Shapes layered above purple triangles
stroke(#73d2de); // colour change to blue
square(64, 262, 37);
square(194, 143, 32);
square(202, 152, 16);
stroke(#fe5d9f);
fill(#fe5d9f);
square(209, -272, 19);
noFill();
stroke(#73d2de);
triangle(-494,445,-719,443,-721,274);

// basic squares
stroke(#3d2645); // colour change to purple
square(48, 130, 65); 
square(-461, -285, 68);
square(-461, -448, 68);

// blue squares
stroke(#73d2de);
square(-200, -3, 68);
square(-192, 5, 51);

// blue triangles
stroke(#73d2de); // colour change to blue
triangle(221,-264,-223,-263,206,116);
fill(#73d2de);
triangle(309,-321,94,-324,93,-467);
noFill();
triangle(-426,-191,-152,-193,-151,-387);
triangle(-421,32,-26,30,-428,277);

// squares layered above blue triangles
stroke(#fe5d9f);
fill(#fe5d9f);
square(190, 0, 41);
noFill();

// pink triangles
stroke(#fe5d9f); // colour change to pink
fill(#fe5d9f);
triangle(-492,184,-694,183,-692,-60);
noFill();
triangle(-523,246,-692,444,-695,243);
triangle(-436,268,-666,420,-665,268);

// pink squares
stroke(#fe5d9f);
square(-668, -292, 66);
fill(#fe5d9f);
square(-612, 303, 47);

// Save the canvas on the first frame
  if (frameCount == 1) {
    String filename = "FreekeRecreation";
    save(filename + ".png");
    print("image saved as " + filename + ".png");
    noLoop(); // Stop the draw loop after saving the image
  }
}
