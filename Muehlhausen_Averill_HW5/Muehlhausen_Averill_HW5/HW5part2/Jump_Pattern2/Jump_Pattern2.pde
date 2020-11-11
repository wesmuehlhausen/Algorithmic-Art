/*
Wesley Muehlhausen & Weston Averill
Algorithmic Art
October 31, 2019
jump_Pattern2.pde

In this program we used for loops to print the image in the jump pattern. 
The first row is the images base state and the second is the image
flipped over the x axis  
*/

//Frieze Hop pattern
PImage icon; // storage for image
int w, h; // width and height of image
int reps = 10; // number of repetitions of
// image across window

void setup() 
{
  icon = loadImage("pattern2.png"); //base image - call myShape function if created by shapes
  w = icon.width;
  h = icon.height;
  println(w,h);
  size(600,600);  //old size func. allowed vars: reps*w, h
  drawPattern();
}

// Draw Jump frieze pattern
void drawPattern() 
{
  //draw original image
  pushMatrix();
  for (int i = 0; i < 15; i++)
  {
    image(icon, 0, 0); //base pattern
    translate(w, 0);  //translate width of base pattern
  }
  popMatrix();
  
  //move down and flip over x-axis
  pushMatrix();
  translate(0, 2*h);
  scale(1, -1); 
  for (int i = 0; i < 15; i++) 
  {
    image(icon, 0, 0); //base pattern
    translate(w, 0);  //translate width of base pattern
  }
  popMatrix();
}
