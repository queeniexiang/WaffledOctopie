class Player extends Character {

  Player() {
    super(width/2, height/2, 200, 20, 0, true, #3bbc62); //200 is original radius size
  }

  public boolean touching(Enemy other) {
    float distance = dist(posX, posY, other.posX, other.posY) - size/2 - other.size/2; //calculates distance betw 2 circles
    //System.out.println("distance: " + distance + "radius: " + other.getRadius());
    if (distance <= 0 && radius == other.getRadius())
      return true;
    else 
      return false;
  }
  
  public boolean touchingUpgrades(Upgrades other) {
    float distance = dist(posX, posY, other.posX, other.posY); //calculates distance betw 2 circles
    //System.out.println("distance: " + distance + "radius: " + other.getRadius());
    if (distance <= 0)
      return true;
    else 
      return false;
  }
}