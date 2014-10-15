//Declare Class "Rubble"
class Rubble {

//Data of the Rubble
  float x = 0;
  float y = height;  // why does this matter as the intial value?
  float endX = random(width);
  float endY = 0; 
  
  float vx;
  float vy; 
  float exponent = 1.0; 
 
  float distX;
  float distY;
  float step = 0.03;
  float prcnt = 0.0;
  float direction = 1;

  float chunkSize;

  float red = 255;
  float green = 255;
  float blue = 255;


//Rubble Constructor 

  Rubble(float tempV) {  
    vx = tempV;
    vy = tempV;
    distX = endX - random(220,360);
    distY = endY - height * random(2.5);
    chunkSize = random(2,10);
}


//Rubble Functions

  void display() { 
    pushStyle();
    fill(random(100, 200));
    ellipse(x, y, chunkSize, chunkSize);
    popStyle();
  }


 void fly(float tempX, float tempY) { //Cause rubble to fly up when rocks hit

    prcnt += step * direction;
    float e = pow(prcnt, exponent);
    
    vx = (prcnt * distX);
    vy = (e * distY);
    
    x = tempX + vx; 
    y = tempY + vy;
  }


  void bounce() {  //Cause rubble to ricochet instead of flying offscreen

    if (x>width || x<0) {   //why won't x>width work here?
      x = x * -1;
      y = y +(random(-2, 2));
    } 
    if (y>height || y<0) {    // why won't y>height work here?
      y = y * -1;
      x = x + (random(-2, 2));
    }
  }



  

  // void blush() {
  //   if (x > width || x < 0 && y > height || y < 0) {
  //     fill(red, green, blue);
  //     red = random(0, 255);
  //     green = random(0, 255);
  //     blue = random(0, 255);
  //   }
  // }
  
}
