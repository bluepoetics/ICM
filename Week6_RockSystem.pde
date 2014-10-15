//Establish class "RockSystem"
class RockSystem {

//Data of the RockSystem

ArrayList<Rock> rockslide;  //ArrayList for the bulk of the rocks
  

//RockSystem Constructor
RockSystem () {
  rockslide = new ArrayList<Rock>(); 
  
}


//RockSystem Functions


void addRock() {  //Add new rocks to the ArrayList
    for (int i = 0; i < 250; i++) {
    rockslide.add(new Rock()); 
    }
}

  
void run() {   //Initialize the appearance & falling of bulk of the rocks
  for (Rock r : rockslide) {
    r.display();
    r.tumble();
  }
}

  
   
void explosions() {  //Initialize explosions
  for (Rock r : rockslide) {
    r.startExplode();
    r.explode(); 
  }
  
  
}

 
void rolling() {   //Initialize rolling
  for (Rock r : rockslide) {
    r.roll();
 }
}  


// void bouncing() {
//   for (Rock r: rockslide) {
//     r.bounce();
//   }
// }

}
