public class Upgrades {
  protected int cost; 
  protected String itemName;
  protected String itemType; 
  protected String function;
  protected int duration; 
  protected String description;


  public Upgrades() {
    cost = 0; 
    itemName = description = itemType = function = "";
    duration = 0;
  }

  public Upgrades(int inputCost, String inputName, int inputDuration, String inputDescription) {
    cost = inputCost;
    itemName = inputName;
    duration  = inputDuration;
    description = inputDescription;
  }
}