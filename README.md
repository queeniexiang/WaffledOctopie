# WaffledOctopie
### Queenie Xiang, Terry Guan, Fabiola Radosav

### Antikythera
Welcome to Antikythera! Antikythera is the name of a Greek analogue computer used to predict astronomical positions and eclipses.

### Introduction Page
Upon entering the game, you will encounter the introduction page. This page will contain all instructions and rules necessary for understanding the game. It will consist of buttons of options the player can choose. For example, the player can choose to play the game or read the instructions.

### The game
Antikythera is based off of various versions of already established internet games, such as color switch, where the objective of the game is to avoid all enemies for as long as possible. There is a pre-determined circle track that the player is allowed to move around at a pre-set constant velocity. The enemies will spawn at random locations at random times according to the level difficulty. The player is allowed to switch between the outer and inner edge of the circle by pressing the space bar to avoid enemies.The player can also pick up upgrades to increase its survival rate. The player may also pause the game for 10 seconds to buy an upgrade using the points he or she had earn.

### How it works

#### isTouching() Method 
This method entails checking the distance between the player and either an enemy or an upgrade item. If the player is touching an enemy, the player dies, and the game ends. If the player is touching an upgrade item, the player picks up the item and the item is added to the storage stack. 

#### Enemies
<p> Enemies will be held and kept track of by a priority queue. Enemies will be sorted according to their difficulty. As the level difficulty increases, the average level of the enemies in the priority queue and the number of enemies being displayed will increase. Using a priority queue also allows for the "fading in" effect. Since the number of enemies present varies by difficulty, and there will only be a limited amount of enemies being accessed, and drawn from the priority queue (we are using a priority queue in which acccessing multiple elements is possible and not one that only has a peekMin method), we can display faded enemies that are not going to be spawned in the current difficulty (because there are already enough enemies that fulfill the limit determined by the difficulty) to confuse the player and keep them on their feet. </p>
<p> There are three types of enemies so far. One type is stationary and allowed to be spawned anywhere on the circle, additionally with a 50%-50% chance of spawning on either the outer and inner edge. The second type of enemy moves around the circle, just like the player, but in the opposite orientation. The third type of enemy moves in a diagonal, spawning from one corner at the bottom of the screen, and moves to the opposite corner at the top of the screen. The number of enemies present will be limited by difficulty but will increase as the difficulty increases. The enemies will also be faded in (by increasing its opacity factors) so the player will have time to respond to the spawning enemy. Even though an enemy will appear to be fading in, it does not guarantee that the enemy is the immediate spawning enemy. Also, enemies that won't spawn will also be appearing to fade in. This acts to confuse the player and increase the difficulty. </p> 

#### Upgrades
Upgrades are stored in stacks. The player picks up these upgrades by moving to the location of the upgrade item. The isTouching() method will be used to determine if the player is able to pick up an item. This forces a limitation on the game where the user is only allowed to use the last upgrade it picked up. There are two types of upgrades: slow down and double points. Slow down decreases the frame rate of the game, thus decreasing the speed of movement of both the player and enemies. This effect will last for a duration of 10 seconds. Double points will double the amount of points received normally per second for a duration of 10 seconds. 

#### Circular Movement 
The game also achieves the circle movement effect by using the angular velocity formulas x = a + Rcos(wt + z), y =b + Rsin(wt + z) where z is the initial angle, w is the change in angle,t is time, R is the radius, and (a,b) is the center of a circle with radius R. The touching() method which determines whether an enemy or upgrade is touching the player is determined by calculating the linear distance from the player and the enemy or upgrade.


### Launch instructions
0. If you don't have processing, go download processing 
1. Go to your terminal or command prompt 
2. Type in:
````
git clone git@github.com:queeniexiang/WaffledOctopie.git 
````
Now you've cloned the WaffledOctopie Repo! 

Continue by typing in: 
````
cd WaffledOctopie
cd Antikythera 
processing Antikythera.pde 
```` 
Upon entering the introduction page, the player can choose to read the instructions or dive right into the game. The game will start after a few seconds of delay.After choosing to start the game the player will spawn on a random side of the circle and begin moving while enemies are randomly spawned along the outer and innder sides of the circle. 
