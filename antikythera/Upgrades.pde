public abstract class Upgrades {  
  public int cost; 
  public String itemName;
  public  String itemType; 
  public String function;
  public float duration; 
  public String description;
  public int angle; 
  public float posX, posY; 


  public abstract void drawUpgrades();
 
  public abstract void useUpgrade();
 
  public abstract boolean stillWorking(); 
}