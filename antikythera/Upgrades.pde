public class Upgrades {
  protected int cost; 
  protected String itemName;
  protected int duration; 
  protected String description;


  public Upgrades() {
    cost = 0;
    itemName = description = "";
    duration = 0; 
  }

  public Upgrades(int inputCost, String inputName, int inputDuration, String inputDescription) {
    cost = inputCost;
    itemName = inputName;
    duration  = inputDuration;
    description = inputDescription;
  }
}