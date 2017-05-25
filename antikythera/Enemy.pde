class Enemy extends Character {
  protected int priority; 
  
  public Enemy() {
    super(width/2, height/2, 200, 20, 30, true); 
    priority = 0; 
  }
  
  public Enemy(float centerX, float centerY, float radius, int size, int angle, 
  boolean out, int inputPriority) {
    super(centerX, centerY, 200, size, angle, out); 
    priority = inputPriority;
  }
  
  public void drawCharacter() {
    fill(180, 0, 0); //makes circle maroon
    super.drawCharacter();
    fill(255); //resets fill color to white
  }
  
  public void updateCoordinatesDiag() {
  }
    
        
}