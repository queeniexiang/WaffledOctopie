class EnemyTwo extends Enemy {
  public EnemyTwo() {
    super(); 
  }
  
  public EnemyTwo(int inputPriority) {
    super(width, height, RADIUS, 40, 0, true, inputPriority, color(134,30,90));
  }
  
  public void drawCharacter() {
    fill (134, 30, 90);
    ellipse(posX, posY, size, size); 
    posX -= 3; 
    posY -= 3;
  }
}
  
  