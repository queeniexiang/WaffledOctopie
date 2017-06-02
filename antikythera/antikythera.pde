Player player;
PriorityQueue enemyContainer; 
boolean continueGame; 
boolean paused;
int circleSize, currentScore, highScore, difficulty, difficulty2; //difficulty is a var for time in sec and difficulty2 is a var for time in millisec

void setup() {
  background(0); 
  //fullScreen();
  size(600, 600);
  continueGame = true;
  paused = false; 
  circleSize = 15; 
  currentScore = highScore = 0; 
  player = new Player();
  enemyContainer = new PriorityQueue();
  difficulty = 3; 
  difficulty2 = 60;
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
    if (isDead() || paused)
      continueGame = false;
  }
  else if (paused && !continueGame) {
    background(0); 
    drawUpgradeMenu(); 
  }
  else if (!paused && !isDead())
    continueGame = true;
  else {
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

//fabs
void drawUpgradeMenu() {
  fill(255);
  
  
//double points
  fill(255);
  rect(20,height/2,150,100);
  textSize(15);
  fill(0);
  text("Double Points", width/12 - 5,height/2 + 40);
//description  
  textSize(12);
  fill(0);
  text("earn double points for a",width/12 - 25,height/2 + 80);
  text(" limitted amount of time",width/12 - 25,height/2 + 95);
//slow down    
  fill(255);
  rect(220,height/2,150,100);
  textSize(15);
  fill(0);
  text("Slow Down", 260 ,height/2 + 40);
  textSize(12);
  fill(0);
  text("slow down enemies",240,height/2 + 80);
//tbd
  fill(255);
  rect(420,height/2,150,100);
  textSize(15);
  fill(0);
  text("TBD", 470,height/2 + 40);
  textSize(12);
  fill(0);
  text("tbd",475,height/2 + 80);
}

//switches character's edge upon hitting space
void keyPressed() {
  if (key == ' ') { 
   if (continueGame)
     player.switchSides();
   else {
     player = new Player(); 
     currentScore = 0; 
     enemyContainer = new PriorityQueue();      
     continueGame = true;
   }
  }
  if (key == 'p'){
   paused = !paused; 
  }
  
}

//determines difficulty of game based on currentScore
void determineDifficulty() {
  
}
//every 10 seconds add an enemy . The new enemy is decided randomly
void addEnemy() {
  if (second()%difficulty == 0 && frameCount%difficulty2 == 0) {  //checks to see if x seconds passed and that if it is 1 frame within in the 60 fps
    float dec = random(100);
    Enemy adder; 
    if (dec > 50)
      adder = new EnemyOne(); 
    else 
      adder = new Enemy(); 
    enemyContainer.add(adder);
  }
}

void drawEnemies() { //draws all enemies in the priorityQueue
  for (int i = 0; i < enemyContainer.size(); i++) {
    enemyContainer.get(i).drawCharacter();
  }
}

boolean isDead() { //checks if the player is touching any enemies at all
  for (int i = 0; i < enemyContainer.size(); i++) {
    if (player.touching(enemyContainer.get(i)))
      return true;
  }
  return false;
}