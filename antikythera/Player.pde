class Player extends Character {

  Player() {
    super(width/2, height/2, 200, 20, 0, true); //200 is original radius size
  }

  public void drawCharacter() {
    fill(#3bbc62); //makes circle green  
    super.drawCharacter(); 
    fill(255);
  }
<<<<<<< HEAD
=======

  public boolean touching(Enemy other) {
    float distance = dist(posX, posY, other.posX, other.posY) - size/2 - other.size/2; //calculates distance betw 2 circles
    if (distance <= 0 && radius == other.getRadius())
      return true;
    else 
    return false;
  }
>>>>>>> 286f42ad1f09f441363cf8e95903f62d929b0df6
}