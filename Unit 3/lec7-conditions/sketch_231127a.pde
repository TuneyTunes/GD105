// Declaring variables
PImage Hero, Hero2, Ability1, Ability2, Mountains, Desert;
Boolean Characters = random(1) < 0.5; // 50% Chance
Boolean Abilities = random(1) < 0.5; // 50% Chance
Boolean Locations = random(1) < 0.5; // 50% Chance

// Setting up my canvas
void setup(){
  size(1920,1200);
  Hero = loadImage("hero.png");
  Hero2 = loadImage("hero2.png");
  Ability1 = loadImage("Ability1.png");
  Ability2 = loadImage("Ability2.png");
  Mountains = loadImage("mountains.jpg");
  Desert = loadImage("desert.jpg");
}

// Drawing on my canvas
void draw(){
  // Background
  if (Locations){
    image(Mountains, 0, 0);
    resetMatrix();
  } else {
    image(Desert, 0, 0);
  }
  // Abilities for Characters
  if (Abilities){
    image(Ability1, 0, 0);
    resetMatrix();
  } else {
    image(Ability2, 0, 0);
  }
  // Characters
  if (Characters){
    image(Hero, 0, 0);
    resetMatrix();
  } else {
    image(Hero2, 0, 0);
  }
  if(frameCount == 1){
    saveImage();
  }
}

void saveImage(){
  String name = "";
  name += Characters ? "1" : "0";
  name += Abilities ? "1" : "0";
  name += Locations ? "1" : "0";
  save(name + ".png");
  println("saved as " + name + ".png");
}
