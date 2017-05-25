class EnemyTwo extends Enemy {
  public EnemyTwo() {
    super(); 
  }
  
  public EnemyTwo(int inputPriority) {
    super((width*-1), height, 200, 20, 0, true, inputPriority);
  }
  
  public void drawCharacter() {
    //System.out.println(posX);
    //System.out.println(posY);  
    fill (134, 30, 90);
    //System.out.println(posX);
    //System.out.println(posY); 
    ellipse(posX, posY, size, size); 
    posX -= 10; 
    posY -= 10;
  }
}
  
  