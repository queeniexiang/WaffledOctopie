class EnemyOne extends Enemy {

  public EnemyOne() {
    super();
  }

  public EnemyOne(float centerX, float centerY, int inputPriority) {
    super(centerX, centerY, 200., 20, 0, true, inputPriority);
  }

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
  
  public void determineSide() {
    if ( (int)(random (0, 2)) == 0) {
      //System.out.println("0"); 
      out = true;
      switchSides(); 
      //System.out.println(radius);
    }
    posX = radius * cos(radians(angle)) + width/2;  //width/2 centers the x cor of character
    posY = radius * sin(radians(angle)) + height/2; //height/2 centers the y cor of character
    
    if ( (int(random (0,2) ) == 1)) {
       float temp = posX; 
       posX = posY * -1 ; 
       posY = temp; 
      
    }
    
    System.out.println(posX);
    System.out.println(posY); 
      
}
  
    

  public void drawCharacter() {
    fill(134, 30, 90); 
    ellipse(posX, posY, size, size);
  }
}    