PImage icon; // storage for image
int w, h; // width and height of image
int reps = 10; // number of repetitions of
// image across window

void setup() {
  icon = loadImage("randomShape.png"); //base image - call myShape function if created by shapes
  w = icon.width;
  h = icon.height;
  println(w,h);
  size(600,600);  //old size func. allowed vars: reps*w, h
  drawPattern();
}
//draws pattern
void drawPattern() {
  pushMatrix();
  //draws original shape starting at top left position
  for (int i = 0; i < reps; i++) {
    image(icon, 0, 0); //base pattern
    translate(2*w, 0);  //translate double width of base pattern
  }
  popMatrix();
  
  pushMatrix();
  translate (width+w, 0);
  scale(-1, 1);
  //starts image at top right position and flips it over y-axis
  for (int i = 0; i < reps; i++) {
    image(icon, w, 0); //base pattern
    translate(2*w, 0);  //translate double width of base pattern
  }
  popMatrix();
  
  pushMatrix();
  translate(0, 2*h);
  scale(1, -1);
  //starts image at at double the height and flips over x-axis
  for (int i = 0; i < reps; i++) {
    image(icon, 0, 0); //base pattern
    translate(2*w, 0);  //translate double width of base pattern
  }
  popMatrix();
  
  translate(width+w, 2*h);
  scale(-1, -1);
  pushMatrix();
  //starts image at top right and flips over x and y-axis
  for (int i = 0; i < reps; i++) {
    image(icon, w, 0); //base pattern
    translate(2*w, 0);  //translate double width of base pattern
  }
  popMatrix();
  
  
  
}
