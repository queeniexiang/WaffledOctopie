Player player;
Enemy enemy; 
<<<<<<< HEAD
EnemyOne enemy2;
EnemyTwo enemy3; 
=======
Enemy enemy2;
boolean continueGame; 
>>>>>>> 286f42ad1f09f441363cf8e95903f62d929b0df6
int circleSize; 

void setup() {
  background(0); 
  size(600, 600);
  continueGame = true; 
  circleSize = 15; 
  player = new Player();
  enemy = new Enemy();
<<<<<<< HEAD
  enemy2 = new EnemyOne(); 
  enemy2.determineSide(); 
  enemy3 = new EnemyTwo();
  
=======
  enemy2 = new EnemyOne();
>>>>>>> 286f42ad1f09f441363cf8e95903f62d929b0df6
}

void draw() {
if (continueGame) {
  background(0);
  frameRate(10);
  drawCircle(); 
  player.drawCharacter(); 
  enemy.drawCharacter();
<<<<<<< HEAD
  enemy2.drawCharacter(); 
  enemy3.drawCharacter(); 
=======
  enemy2.drawCharacter();
  if (player.touching(enemy2))
    continueGame = false; 
}
else {
 background(0);
}
>>>>>>> 286f42ad1f09f441363cf8e95903f62d929b0df6
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

//
void checkDeath() {
  
}


//switches character's edge upon hitting space
void keyPressed() {
  if (key == ' ') 
    player.switchSides();
}