//Establish Class "Rock"
class Rock {

// Data of the Rock  

  float x = 0.0;
  float y = 0.0;
  float beginX; // starting x position of rocks
  float beginY; // starting y position of rocks
  float endX = random(width); // determines x where rocks land
  float endY = height; // determines y where rocks land

  float distX; // distance to move on x-axis
  float distY; // distance to move on y-axis

  float exponent = 2.0; // determines the shape of the fall/explode curve
  float step = 0.007; // size of each step along the fall curve
  float prcnt = 0.0;  // percentage of dist that a rock has travelled

  float direction = 1;

  float diameter = 0; //variable for the size of the rocks

  RubbleSystem ru;  //Rubble as Rock data
  boolean exploded = false;  // boolean variable to set when rocks explode into rubble



//Rock Constructor
  
  Rock() {
    beginX = random(270, 330);  // rocks fall from top of mountain
    beginY = 100; 
    diameter = random(40); 
    distX = endX * random(0.75) - beginX * random(0.75); 
    distY = endY - beginY * random(2.5);

    ru = new RubbleSystem();  //Construct the rubble w/in the Rock
  }



//Rock Functions
  
  void display() {  //Sets the characteristics of each rock

    pushStyle();  // limits this fill to the rocks
    fill(115, random(175, 255));
    ellipse(x, y, diameter, diameter);
    popStyle();
  }


  void tumble() {  //Sets the rocks falling along a variety of paths

    prcnt += step; //* direction; [Do I need this?  Why/why not?]
    if (direction == 1) {
      x = beginX + (prcnt * distX);
      float e = pow(prcnt, exponent); 
      y = beginY + (e * distY);
    }
  }
  
    
  void roll() {  // Set parameters for rolling of rocks
    if (y > height) {
    for (int i=0; i < 50; i+=10) {
    prcnt += step * direction;
    x = beginX + (prcnt * 2 * distX);
    // float e = pow(pct, exponent); 
    y = height - 1;
    }
   }
  }
  
  // void bounce() {
  //   if (y > height) {
  //     for (int i=0; i < 100; i+=10) {
  //      // prcnt += step * direction;
  //      // x = beginX + (prcnt * 2 * distX);
  //      // y = distY * -1;
  //         prcnt += step * direction;
  //   float e = pow(prcnt, exponent);
  //   float vx=6;
  //   float vy=6; 
    
  //   vx = (prcnt * distX);
  //   vy = (e * distY);
    
  //   x = beginX * 0.01; 
  //   y = beginY * 0.01;
    
  //     }
  //   }
  // }

  
  void startExplode() {  //Initiate the explosion when rocks have landed at the bottom
    if (y >= 500 && !exploded) {
      exploded = true;
      ru.addRubble();
    }
  }
  
  
  void explode() {  //Explode some of the rocks via a rubble function
    if (exploded) {
      ru.run(endX,endY);
      ru.disappear(); 
    }
  }
  
   


}
