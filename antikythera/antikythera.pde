Character test;

void setup() {
  background(0); 
  size(600, 600); 
  test = new Character (width/2, height/2, 100, 10); 
}

void draw() {
  background(0);
  test.drawCharacter();
  frameRate(7); 
}