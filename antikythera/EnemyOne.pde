class EnemyOne extends Enemy {

  public EnemyOne() {
    super(width/2, height/2, 200, 20, (int) random(0, 360), true, color(134, 30, 90), 10);
    if (random(10) < 5) {
      out = true;
    }
    else
      out = false; 
    super.switchSides();
    posX = width/2 + radius * cos(radians(angle));
    posY = height/2 + radius * sin(radians(angle));
  }


  public void drawCharacter() {
    fill(myColor); 
    ellipse(posX, posY, size, size);
  }
}    