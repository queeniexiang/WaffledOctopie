class Enemy extends Character {
  protected int priority; 

  public Enemy() {
    super(width/2, height/2, 200, 20, 30, true, color(180, 0, 0)); 
    priority = 0;
  }

  public Enemy(float posX, float posY, float radius, int size, int angle, 
    boolean out, color myColor, int inputPriority) {
    super(posX, posY, 200, size, angle, out, myColor); 
    priority = inputPriority;
    super.radius = radius;
  }

  public void drawCharacter() {
    fill(180, 0, 0); //makes circle maroon
    noStroke();
    ellipse(posX, posY, size, size);
    updateCoordinates();
    stroke(10); //resets stroke
    fill(255); //resets fill color to white
  }

  public void updateCoordinates() {
    angle = (angle - 2) % 360; //changing 2 will change the speed in which the character moves around the circle 
    posX = width/2 + radius * cos(radians(angle));  //width/2 centers the x cor of character
    posY = height/2 + radius * sin(radians(angle)); //height/2 centers the y cor of character
  }
  
  public int getPriority() {
    return priority;
  } 
  
  private int compareTo(Enemy enemy) {
    if (this.priority > enemy.getPriority()) {
      return 1;
    }
    
    else if (this.priority == enemy.getPriority()) {
      return 0;
    }
    
    else {
      return -1;
    }
  }
}