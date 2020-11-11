//2D arrays and images intro

int[][] ray = new int[10][10];
int n = 0;
PImage img;

void setup(){
  //size(400,400);  //or set to image size initially and not use surface.setSize below
  size(390,292);  
  for(int j = 0; j  < 10; j++)
  {
    for(int i = 0; i < 10; i++)
    {
      ray[i][j] = n++;
    }
  }
  println(ray.length);
   for(int j = 0; j  < 10; j++)
  {
    for(int i = 0; i < 10; i++)
    {
      print(ray[i][j]);
    }
    println();
  }
  
  // load in my picture
  
  img = loadImage("capeLookout.jpg");
  //surface.setResizable(true);  //if want to resize window
  //surface.setSize(img.width, img.height);
}

void draw(){
  //PImage img = loadImage("capeLookout.jpg"); //don't load in draw - slow and memory hog - load in setup
  println(img.width, img.height); 
  loadPixels();  //pixels array
  img.loadPixels();  //img pixels array
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y * img.width;   //Array mapping function 
  println(red(img.pixels[loc]));
 // The equivalent statement to get(x, y) using pixels[] is pixels[y*width+x]
  println(" " + red(img.get(x,y)));
  color myRed = color(255,0,0);
  set(x,y,myRed); 

//make a copy of the img image into the pixels array 
//Equivalent to just doing the following - but need to remove img.loadPixels() above
//image(img,0,0);

  for( y=0; y < img.height; y++) {
    for( x = 0; x < img.width; x++) {
      loc = x + y*img.width;
      pixels[loc] = img.pixels[loc];
    }
  }
  
  //pixels = img.pixels;  //why not this? - reference copied - refering to the same array
  updatePixels();      //why is this needed?
  noLoop();
}
