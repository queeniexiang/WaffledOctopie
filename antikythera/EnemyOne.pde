class EnemyOne extends Enemy {

  public EnemyOne() {
    super(width/2, height/2, 200, 20, (int) random(0, 360), true, 10);
    if (random(10) < 5) {
      out = true;
    }
    else
      out = false; 
    super.switchSides();
    posX = width/2 + radius * cos(radians(angle));
    posY = height/2 + radius * sin(radians(angle));
  }

//  public EnemyOne(float posX, float posY, int inputPriority) {
//  }

  /* public void determineXY() {
   int randomNum = 1; //(int)random(0,2); 
   System.out.println(randomNum); 
   System.out.println(radius); 
   
   if (randomNum == 0) {
   posX = radius * cos(radians(angle)) + width/2;  //width/2 centers the x cor of character
   posY = radius * sin(radians(angle)) + height/2;
   } else {
   posX = radius * cos(radians(random(270,360))) + width/2;  //width/2 centers the x cor of character
   posY = radius * sin(radians(random(0, 90))) + height/2;
   
   }
   System.out.println(posX); 
   System.out.println(posY); 
   } */

  /*  public void determineSide() {
   int selector = (int)random(0,5); 
   if ( (int)(random (0, 2)) == 0) {
   //System.out.println("0"); 
   out = true;
   switchSides(); 
   //System.out.println(radius);
   }
   if (selector == 0) {
   angle = 0;
   }
   
   if (selector == 1) {
   angle = 90; 
   }
   
   if (selector == 2) {
   angle = 180;
   }
   
   if (selector == 3) {
   angle = 270;
   } 
   
   posX = radius * cos(radians(angle)) + width/2;  //width/2 centers the x cor of character
   posY = radius * sin(radians(angle)) + height/2; //height/2 centers the y cor of character
   }
   
   
   */
  public void drawCharacter() {
    fill(134, 30, 90); 
    ellipse(posX, posY, size, size);
  }
}    