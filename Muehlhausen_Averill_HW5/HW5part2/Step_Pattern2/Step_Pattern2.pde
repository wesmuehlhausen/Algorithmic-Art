/*
Wesley Muehlhausen & Weston Averill
Algorithmic Art
October 31, 2019
Step_Pattern2.pde

In this program we again used for loops to print the image in the Step Pattern. 
The first row is the images base is printed but transleted half a width to the left
The second row is a duplicate of the first but with every image flipped over the x axis

*/

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
  drawFrieze();
  //save("hopFrieze.gif");
}

// Draw Hop frieze pattern
void drawFrieze() 
{
  //draws images in a row but with a translation to the left to offset the pattern
  pushMatrix();
  translate (w*-.5, 0);
  for (int i = 0; i < 15; i++) 
  {
    image(icon, 0, 0); //base pattern
    translate(w, 0);  //translate width of base pattern
  }
  popMatrix();
  
  //Origional pattern (non translated) but flipped over the x axis
  translate(0, 2*h);
  scale (1, -1);
  for (int i = 0; i < 15; i++) 
  {
    image(icon, 0, 0); //base pattern
    translate(w, 0);  //translate width of base pattern
  }
  
  
}
