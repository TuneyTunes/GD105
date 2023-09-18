// This program makes a Kotti Face 
// Based on youtuber "TheKotti" profile picture
// Using points and lines

void setup() {
  size(1024, 1024);
}

void draw() {
  
  // white paper, black ink
  background(255);
  stroke(0);

  // definition of all eyebrow points
  PVector eyebrow1 = new PVector(725, 32);
  PVector eyebrow2 = new PVector(931, 179);
  PVector eyebrow3 = new PVector(53, 146);
  PVector eyebrow4 = new PVector(321, 34);
  
  // definition of all eye points
  PVector leftEye = new PVector(200, 250);
  PVector rightEye = new PVector(800, 250);
  
  // definition of all nose points
  PVector nose1 = new PVector(496, 354);
  PVector nose2 = new PVector(384, 483);
  PVector nose3 = new PVector(593, 483);
  PVector nose4 = new PVector(496, 355);
  
  // definition of all mouth points
  PVector mouth1 = new PVector(936, 707);
  PVector mouth2 = new PVector(933, 544);
  PVector mouth3 = new PVector(58, 534);
  PVector mouth4 = new PVector(102, 687);
  PVector mouth5 = new PVector(126, 744);
  PVector mouth6 = new PVector(175, 805);
  PVector mouth7 = new PVector(199, 829);
  PVector mouth8 = new PVector(488, 951);
  PVector mouth9 = new PVector(574, 954);
  PVector mouth10 = new PVector(895, 817);
  PVector mouth11 = new PVector(932, 763);
  PVector mouth12 = new PVector(936, 706);

  // eyebrow points for the eyebrows
  strokeWeight(26);
  line(eyebrow1.x, eyebrow1.y, eyebrow2.x, eyebrow2.y);
  line(eyebrow3.x, eyebrow3.y, eyebrow4.x, eyebrow4.y);
  
  // eye points for the eyes
  strokeWeight(165);
  point(leftEye.x, leftEye.y);
  point(rightEye.x, rightEye.y);
  
  // nose points for the nose
  strokeWeight(25);
  line(nose1.x, nose1.y, nose2.x, nose2.y);
  line(nose2.x, nose2.y, nose3.x, nose3.y);
  line(nose3.x, nose3.y, nose4.x, nose4.y);
  
  // mouth points for the mouth
  strokeWeight(6);
  line(mouth1.x, mouth1.y, mouth2.x, mouth2.y);
  line(mouth2.x, mouth2.y, mouth3.x, mouth3.y);
  line(mouth3.x, mouth3.y, mouth4.x, mouth4.y);
  line(mouth4.x, mouth4.y, mouth5.x, mouth5.y);
  line(mouth5.x, mouth5.y, mouth6.x, mouth6.y);
  line(mouth6.x, mouth6.y, mouth7.x, mouth7.y);
  line(mouth7.x, mouth7.y, mouth8.x, mouth8.y);
  line(mouth8.x, mouth8.y, mouth9.x, mouth9.y);
  line(mouth9.x, mouth9.y, mouth10.x, mouth10.y);
  line(mouth10.x, mouth10.y, mouth11.x, mouth11.y);
  line(mouth11.x, mouth11.y, mouth12.x, mouth12.y);
  
  // this saves the canvas on the first frame
  // so we can get a clean image of the output easily
  if(frameCount == 1) {
    String filename = "KottiFace";
    save(filename + ".png");
    print("image saved as " + filename + ".png");
  }
}
