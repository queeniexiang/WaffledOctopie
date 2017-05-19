class Character {

  float posX, posY, radius;
  int size;
  int angle; //angle measure
  


  //default constructor 
  public Character() {
    posX = posY = radius = angle = 0;
  }

  //overload constructor
  public Character (float posX, float posY, float radius, int size) {
    this.posX = posX;
    this.posY = posY;
    this.radius = radius; 
    this.size = size; 
    angle = 0;
  }

  public void drawCharacter() {
    ellipse(posX, posY, size, size);
    updateCoordinates();
  }

  public void updateCoordinates() {
    angle = (angle + 2) % 360; //changing 2 will change the speed in which the character moves around the circle 
    posX = radius * cos(radians(angle)) + width/2;  //width/2 centers the x cor of character
    posY = radius * sin(radians(angle)) + height/2; //height/2 centers the y cor of character
  }
  
  // ------------------- acessors -----------------------
  public float getRadius() {
   return radius;  
  }
  
  public int getSize() {
   return size;  
  }
  
  public int getAngle() {
     return angle;  
  }
  //------------------ end of mutators -------------------
  
} //end of class 