//sketch to create a negative of an image
PImage source;       // Source image
PImage destination;  // Destination image

//set screen size and load image
void setup() {
  size(200, 200);
  source = loadImage("monkey.jpg");  //"monkey.jpg"); 
  // The destination image is created as a blank image the same size as the source.
  destination = createImage(source.width, source.height, RGB);
  mydraw();
}

//change each pixel to negative value
void mydraw() {
  // We are going to work with both image's pixels
  source.loadPixels();
  destination.loadPixels();
  
  for (int x = 0; x < source.width; x++) {
    for (int y = 0; y < source.height; y++ ) {
      int loc = x + y*source.width;
      float r = red(source.pixels[loc]);
      float g = green(source.pixels[loc]);
      float b = blue(source.pixels[loc]);
      
           
      //change rgb values to negative values
      color c = color(255 - r, 255 - g, 255 - b);
      //color c = color( constrain(255 - r, 0, 255), constrain(255 - g, 0, 255), constrain(255 - b, 0, 255));
      destination.pixels[loc] = c;
    }
  }

  // We changed the pixels in destination
  destination.updatePixels();
  // Display the destination
  image(destination,0,0);
}