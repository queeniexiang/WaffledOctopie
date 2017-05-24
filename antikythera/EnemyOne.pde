class EnemyOne extends Enemy {
  public EnemyOne() {
    super();
  }
  
  public EnemyOne(float centerX, float centerY, int size, int inputPriority) {
    super(centerX, centerY, size, inputPriority);
  }
  
  public void drawCharacter() {
    posX = radius * cos(radians(angle)) + width/2;  //width/2 centers the x cor of character
    posY = radius * sin(radians(angle)) + height/2;
    fill(134,30,90); 
    ellipse(posX, posY, size, size);
  }
    
  
  
}