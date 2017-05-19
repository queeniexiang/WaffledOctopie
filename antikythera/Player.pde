class Player extends Character {

  boolean out;  

  Player() {
    super(width/2, height/2, 200, 20); //200 is original radius size
    out = true;
  }

  public void drawCharacter() {
    super.drawCharacter(); 
    switchSides();
  }
  
  public void switchSides() {
    if (keyPressed && key == 'b') {
      if (out) {
        out = false; 
        radius = radius - size;
      } else {
        out = true;
        radius = 200;
      }
    }
  }
}