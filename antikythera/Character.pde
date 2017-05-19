class Character {

  float posX, posY, radius;
  int size;
  int theta; 
  float scaleX = width / 2;
  float scaleY = height / 2;   


  //default constructor 
  public Character() {
    posX = posY = radius = theta = 0;
  }

  //overload constructor
  public Character (float posX, float posY, float radius, int size) {
    this.posX = posX;
    this.posY = posY;
    this.radius = radius; 
    this.size = size; 
    this.theta = 0;
  }

  public void drawCharacter() {
    ellipse(posX, posY, size, size);
    //System.out.println(posX);
    //System.out.println(posY); 
    updateCoordinates();
  }

  public void updateCoordinates() {
    theta = (theta + 5) % 360; 
    posX = radius * cos(radians(theta)) + scaleX;  
    posY = radius * sin(radians(theta)) + scaleY; 
  }
}