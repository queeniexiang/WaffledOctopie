class Player extends Character {

  Player() {
    super(width/2, height/2, 200, 20, 0, true); //200 is original radius size
  }

  public void drawCharacter() {
    fill(#3bbc62); //makes circle green  
    super.drawCharacter(); 
    fill(255);
  }
  
}