Player player;
Enemy enemy; 
EnemyOne enemy1;
EnemyTwo enemy2;
PriorityQueue enemyContainer; 
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
  enemyContainer = new PriorityQueue();
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
    addEnemy(); //will only add enemy every 5 seconds
    drawEnemies(); 
    stroke(255);
    //line(enemy1.getPosX(), enemy1.getPosY(), player.getPosX(), player.getPosY());
    stroke(0);
    if (isDead())
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

//switches character's edge upon hitting space
void keyPressed() {
  if (key == ' ') 
    player.switchSides();
}

//every 10 seconds add an enemy . The new enemy is decided randomly
void addEnemy() {
  if (second()%5 == 0 && frameCount%60 == 0) {  //checks to see if 5 seconds passed and that if it is 1 frame within in the 60 fps
    float dec = random(100);
    Enemy adder; 
    if (dec > 50)
      adder = new EnemyOne(); 
    else 
    adder = new Enemy(); 
    enemyContainer.add(adder);
  }
}

void drawEnemies() {
  for (int i = 0; i < enemyContainer.size(); i++) {
    enemyContainer.get(i).drawCharacter();
  }
}

boolean isDead() {
  for (int i = 0; i < enemyContainer.size(); i++) {
    if (player.touching(enemyContainer.get(i)))
      return true;
  }
  return false;
}