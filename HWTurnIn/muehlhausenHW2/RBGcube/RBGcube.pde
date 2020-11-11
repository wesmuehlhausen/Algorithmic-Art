//Wesley Muehlhausen
//September 11, 2019
//Homework 2: Introduction to Processing
//CPSC211
/*This code uses many random() functions to create a 3-D with randomly 
 lines (within the specified bounderies) which are RGB colored */
  

void setup() {
 size(1000, 1000); 
 background(0);
}
  int x = 1;
void draw() {
  frameRate(x);
  x++;
  
  //blue
  stroke(0, 0, random(25, 255));
  line(random(100,200), random(400,500), random(100,200), random(800,900));
  line(random(500,600), random(400,500), random(500,600), random(800,900));
  line(random(400,500), random(200,300), random(400,500), random(600,700));
  line(random(800,900), random(200,300), random(800,900), random(600,700));
  
  
  //red
  stroke(random(25, 255), 0, 0);
  line(random(100,200), random(400,500), random(400,500), random(200,300));
  line(random(500,600), random(400,500), random(800,900), random(200,300));
  line(random(100,200), random(800,900), random(400,500), random(600,700));
  line(random(500,600), random(800,900), random(800,900), random(600,700));
  
  //green
  stroke(0, random(25, 255), 0);
  line(random(100,200), random(400,500), random(500,600), random(400,500));
  line(random(100,200), random(800,900), random(500,600), random(800,900));
  line(random(400,500), random(200,300), random(800,900), random(200,300));
  line(random(400,500), random(600,700), random(800,900), random(600,700));
  
  
 
}

 void keyPressed() {
  save("RGBcube.png");
}
