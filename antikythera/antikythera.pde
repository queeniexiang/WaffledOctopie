Player player;
Enemy enemy; 
EnemyOne enemy2;
EnemyTwo enemy3; 
int circleSize; 

void setup() {
  background(0); 
  size(600, 600);
  circleSize = 15; 
  player = new Player();
  enemy = new Enemy();
  enemy2 = new EnemyOne(); 
  enemy2.determineSide(); 
  enemy3 = new EnemyTwo();
  
}

void draw() {
  background(0);
  frameRate(10);
  drawCircle(); 
  player.drawCharacter(); 
  enemy.drawCharacter();
  enemy2.drawCharacter(); 
  enemy3.drawCharacter(); 
}

//draws two circles. There is an outer circle that represents the outer edge circle and an inner
//circle that will help form the inner edge
void drawCircle() {
  float r = 2 * 200 - player.getSize();
  fill(245); 
  ellipse(width/2, height/2, r, r); //draws outer circle
  fill(0); //makes inner circle black. Appears concentric
  ellipse(width/2, height/2, r - 2 * player.getSize() - circleSize, r - 2 * player.getSize() - circleSize); // draws inner circle... 15 is an arbitrary number used for appearance sake
  fill(255); //resets filling to be white
}

//switches character's edge upon hitting space
void keyPressed() {
  if (key == ' ') 
    player.switchSides(); 
}