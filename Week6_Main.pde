//Intro to Computational Media - Week 6
//"Rockslide with Particles, Phase 2" - Nick Hubbard

//Main Code

// ArrayList<RockSystem> rs;

RockSystem rs; //Delcare new RubbleSystem object

void setup() {
  size(640, 450); 
  // rs = new ArrayList<RockSystem>();
  
  rs = new RockSystem(); 
}

void draw() {
  background(255);
    
  // Draws a mountain in the background
  stroke(0);
  beginShape();
  vertex(0,height);
  vertex(30, 275);
  vertex(120, 150);
  vertex(300, 88);
  vertex(460, 130); 
  vertex(580, 300);
  vertex(width,height);
  endShape();
  noStroke();  
  
  // for (RockSystem r: rs) {  
  rs.run(); 
  rs.explosions();
  rs.rolling();
  // rs.bouncing();
   // }
  
    
}

void mousePressed() {  //Starts rocks falling, including exploders
  // for (int i=0; i < 100; i++) {
  // RockSystem r = rs.get(i);
   rs.addRock(); 
}
