// Intro to Computational Media - Assignment 1
// "Values" - Nick Hubbard

size(640,360);
background(0);
noStroke();

// realized the visual effect would be amplified if I removed the stroke

fill(45);
rect(7, 7, 625, 345, 2);

// went back and added a slight rounding to edges

fill(55);
rect(14, 14, 610, 330, 2);
fill(65); 
rect(21, 21, 595, 315, 2);
fill(75);
rect(28, 28, 580, 300, 2);
fill(85);
rect(35, 35, 565, 285, 2);
fill(95);

//originally the gradient was more like steps of 15-20
//went back here and standardized to steps of 10 to smooth out

rect(42, 42, 550, 270, 2);
fill(105);
rect(49, 49, 535, 255, 2);
fill(115); 
rect(56, 56, 520, 240, 2); 
fill(125);
rect(63, 63, 505, 225, 2);

//wondering if there's a way to automate or simplify
//this sequence...will ask Dan...

fill(135);
rect(70, 70, 490, 210, 2);
fill(145); 
rect(77, 77, 475, 195, 2); 
fill(155);
rect(84, 84, 460, 180, 2);
fill(165);
rect(91, 91, 445, 165, 2);
fill(175);
rect(98, 98, 430, 150, 2);
fill(185); 
rect(105, 105, 415, 135, 2);
fill(195);
rect(112, 112, 400, 120, 2);
fill(205); 
rect(119, 119, 385, 105, 2);
fill(215);
rect(126, 126, 370, 90, 2);
fill(225);
rect(133, 133, 355, 75, 2);

//originally I had been stepping 10 pixels in for each corner of 
//each rectangle, but I wanted to use the whole grayscale from 
//0-255, so at this point I realized my geometry had limited me 
//at 215. I went back and changed the corner step to 7 pixels

fill(235);
rect(140, 140, 340, 60, 2);
fill(245);
rect(147, 147, 325, 45, 2);
fill(255);
rect(154, 154, 310, 30, 2);
