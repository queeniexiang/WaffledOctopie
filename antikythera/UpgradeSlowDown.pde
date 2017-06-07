public class UpgradeSlowDown extends Upgrades {
  PShape slowDown, partA, partB; 
  public void drawUpgrades() { 
    partA = createShape(TRIANGLE, posX, posY, posX+20, posY, posX+20, posY+20);
    partA.setFill(140,100); 
    partB = createShape(TRIANGLE, posX+20, posY+20, posX+40, posY+20, posX, posY+20); 
    partB.setFill(140,100); 
    slowDown.addChild(partA); 
    slowDown.addChild(partB); 
    shape(slowDown); 
  } 

  public void useUpgrade() {
  }

  public boolean stillWorking() {
    return true; 
  }
}