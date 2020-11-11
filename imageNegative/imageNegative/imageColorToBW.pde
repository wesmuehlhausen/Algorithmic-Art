//convert color image to BW image
int n = 0;
float threshold = 100;
PImage img;

//set window size and load image to manipulate
void setup(){
  // load in my picture
  size(400,400);
  //size(390,292);
  img = loadImage("capeLookout.jpg");
  surface.setResizable(true);  //need to set window size to image wxh below
  surface.setSize(img.width, img.height);
}

//convert color value to relative black and white value of each pixel
void draw(){
  loadPixels();  //pixels array
  img.loadPixels();  //img pixels array
  
  for( int y=0; y < img.height; y++) {
    for(int x = 0; x < img.width; x++) {
      int loc = x + y*img.width;
      //pixels[loc] = img.pixels[loc];
      // Test the color avarages against the threshold
      // Get the R,G,B values from image
      float r = red   (img.pixels[loc]);
      float g = green (img.pixels[loc]);
      float b = blue  (img.pixels[loc]);
      pixels[loc]  = color(blackWhiteValue(r,g,b));  // White
    }
  }
   
  //pixels = img.pixels;  //why not this?
  updatePixels();      //why is this needed?
  noLoop();
}

//function computes average of 3 args and returns 255 (white) if average is > 100, else return 0 (black)
int blackWhiteValue( float r, float g, float b){
   if (((r + g + b) / 3.0) > threshold) {
        return 255;  // White
      }  else {
        return 0;    // Black
      }
}
