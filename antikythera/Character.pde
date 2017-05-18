class Character {

  float posX, posY, radius;
  int size; 

  //default constructor 
  public Character() {
    posX = posY = radius = 0;
  
  }

  //overload constructor
  public Character (float posX, float posY, float radius, int size) {
    this.posX = posX;
    this.posY = posY;
    this.radius = radius; 
    this.size = size; 
  }

  public void drawCharacter() {
    ellipse(posX, posY, size, size);

 }
}