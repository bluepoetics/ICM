//Declare Class "RubbleSystem"
class RubbleSystem {

  //Data of RubbleSystem
  ArrayList<Rubble> explosion;  


  //RubbleSystem Constructor
  RubbleSystem() {
    explosion = new ArrayList<Rubble>();
  }

  //RubbleSystem Functions
  void addRubble() {
    for (int i = 0; i < 5; i++) { 
      explosion.add(new Rubble(6));
    }
  }

  void run(float tempX, float tempY) {
    for (Rubble r : explosion) {
      r.display();
      r.fly(tempX, tempY);
      r.bounce();
      // r.blush();
    }
  }

  void disappear() {  //Reduce overall amount of rubble
    if (explosion.size() > 1) {
      explosion.remove(0);
    }
  }
}
