public class UpgradeDoublePoints extends Upgrades {
  
  int size; 
  public UpgradeDoublePoints() {
    cost = 0; 
    itemName = description = itemType = function = "";
    duration = 0;
    angle = (int) random(0, 360);
    size = 30; 
    if (random(100) > 50 ) {
      posX = width/2 + (365* cos(angle));
      posY = height/2 + (365 * sin(angle));
    } else {
      posX = width/2 + (400 * cos(angle));
      posY = height/2 + (400 * sin(angle));
    }
  }

  public UpgradeDoublePoints(int inputCost, String inputName, int inputDuration, String inputDescription, int inputSize) {
    cost = inputCost;
    itemName = inputName;
    duration  = inputDuration;
    description = inputDescription;
    size = inputSize;
  }
  
  public void drawUpgrades() {
    fill(143, 120, 100); 
    ellipse(posX, posY, size, size);
  }
  
  public void useUpgrade() {
      currentScore += 1;
      duration += (float)1/60; //equates to adding 1 per second    
      System.out.println(duration);
  }
 
  public boolean stillWorking() {
    if (duration <= 10)
      return true;
     else 
      return false;
  }
}