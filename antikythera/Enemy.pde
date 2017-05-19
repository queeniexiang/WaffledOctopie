class Enemy extends Character {
  int len, wid; 
  int priority; 
  
  public Enemy() {
    super(width/2, height/2, 250, 100); 
    len = wid = 40;
    priority = 0; 
  }
  
  public Enemy(float inputX, float inputY, int size, int inputLen, int inputWid, int inputPriority) {
    super(inputX, inputY, inputWid/2, size); 
    len = inputLen * size;
    wid = inputWid * size;
    priority = inputPriority;
  }
  
  
  public void updateCoordinatesDiag() {
  }
    
  
  public int getWid() {
    return wid;
  }
  
  
      
}