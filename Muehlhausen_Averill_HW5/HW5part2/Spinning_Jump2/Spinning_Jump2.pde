/*
Wesley Muehlhausen & Weston Averill
Algorithmic Art
October 31, 2019
Spinning_Jump2.pde

In this program we again used for loops to print the image in the spinning jump pattern. 
The first row is the images base is printed every other square
The first row also prints the image every other square again bit with a flip over the y-axis
The second row is a duplicate of the first but with every image flipped over the x axis
flipped over the x axis  
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
  drawPattern();
}

//draws pattern
void drawPattern() {
  
  //draws original shape starting at top left position
  pushMatrix();
  for (int i = 0; i < reps; i++) 
  {
    image(icon, 0, 0); //base pattern
    translate(2*w, 0);  //translate double width of base pattern
  }
  popMatrix();
  
  //starts image at top right position and flips it over y-axis
  pushMatrix();
  translate (width+w, 0);
  scale(-1, 1);
  for (int i = 0; i < reps; i++) 
  {
    image(icon, w, 0); //base pattern
    translate(2*w, 0);  //translate double width of base pattern
  }
  popMatrix();
  
  //starts image at at double the height and flips over x-axis
  pushMatrix();
  translate(0, 2*h);
  scale(1, -1);
  for (int i = 0; i < reps; i++) 
  {
    image(icon, 0, 0); //base pattern
    translate(2*w, 0);  //translate double width of base pattern
  }
  popMatrix();
  
  //starts image at top right and flips over x and y-axis
  translate(width+w, 2*h);
  scale(-1, -1);
  pushMatrix();
  for (int i = 0; i < reps; i++) {
    image(icon, w, 0); //base pattern
    translate(2*w, 0);  //translate double width of base pattern
  }
  popMatrix();
  
  
  
}
