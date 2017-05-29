Player player;
Enemy enemy; 
EnemyOne enemy1;
EnemyTwo enemy2; 
boolean continueGame; 
int circleSize, currentScore, highScore; 

void setup() {
  background(0); 
  //fullScreen();
  size(600, 600);
  continueGame = true; 
  circleSize = 15; 
  currentScore = highScore = 0; 
  player = new Player();
  enemy = new Enemy(); 
  enemy1 = new EnemyOne();
  enemy2 = new EnemyTwo(2);
}

void draw() {
  if (continueGame) {
    background(0);
    //frameRate(10);
    drawCircle(); 
    currentScore += (int) (10/6); //equal to 1 point per millisecond
    textSize(30); 
    text(currentScore, width/2 - 25, height/2 + 15);    
    player.drawCharacter(); 
    enemy.drawCharacter();
    enemy1.drawCharacter();
    stroke(255);
    //line(enemy1.getPosX(), enemy1.getPosY(), player.getPosX(), player.getPosY());
    stroke(0);
    enemy2.drawCharacter(); 
    if (player.touching((Enemy) enemy1))
      continueGame = false;
  } else {
    background(0);
    fill(255); 
    textSize(50); 
    text(currentScore, width/2 - 25, height/2 + 15); //prints final score
    if (currentScore >= highScore) {
       highScore = currentScore; 
       textSize(20); 
       text("Congratulations! You beat the highscore", width/2 - 150, height/2 - 40); 
    }
  }
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