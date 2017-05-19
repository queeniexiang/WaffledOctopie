Player player;

void setup() {
  background(0); 
  size(600, 600); 
  player = new Player();
}

void draw() {
  background(0);
  drawCircle(); 
  player.drawCharacter(); 
}

//draws two circles. There is an outer circle that represents the outer edge circle and an inner
//circle that will help form the inner edge
void drawCircle() {
  float r = 2 * player.getRadius() - player.getSize();
  ellipse(width/2, height/2, r, r); //draws outer circle
  fill(0); //makes inner circle black. Appears concentric
  ellipse(width/2, height/2, r * .75, r * .75); // draws inner circle
  fill(255); //resets filling to be white
}