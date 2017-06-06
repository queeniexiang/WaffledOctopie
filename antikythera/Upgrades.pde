public class Upgrades {
  PShape slowDown, partA, partB;  
  protected int cost; 
  protected String itemName;
  protected String itemType; 
  protected String function;
  protected int duration; 
  protected String description;
  protected int angle; 
  protected float posX, posY; 

  public Upgrades() {
    cost = 0; 
    itemName = description = itemType = function = "";
    duration = 0;
    angle = (int) random(0, 360);
    if (random(100) > 50 ) { 
      posX = width/2 + (180 * cos(angle));
      posY = height/2 + (180 * sin(angle));
    } else {
      posX = width/2 + (200 * cos(angle));
      posY = height/2 + (200 * sin(angle));
    }
  }

  public Upgrades(int inputCost, String inputName, int inputDuration, String inputDescription) {
    cost = inputCost;
    itemName = inputName;
    duration  = inputDuration;
    description = inputDescription;
  }

  public void createUpgradeShape() {
  }

  public void drawUpgrades() {
    slowDown = createShape(GROUP);   
    partA = createShape(TRIANGLE, posX+10, posY+20, posX, posY, posX+20, posY); 
    partA.setFill(color(118, 215, 196)); 
    partB = createShape(TRIANGLE, posX+20, posY-20, posX+10, posY, posX, posY-20);
    partB.setFill(color(118, 215, 196)); 
    slowDown.addChild(partA);
    slowDown.addChild(partB); 
    shape(slowDown);
  }
 
}