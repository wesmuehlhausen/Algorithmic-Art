void setup() {
    //setup can only be called once in the code
  size(3000, 2000);
  strokeWeight(4);
  smooth();
  stroke(0,102);
  int x = 0;
  int y = 0;
  int z = 0;
  
}
int x = 0;
  int y = 0;
  int z = 1;


void draw(){
  x++;
  y += 7;
  z *= 3;
  
  
  rect(mouseX, mouseY, pmouseX, pmouseY);
  stroke(x, y, z);
  if(x >= 255)
    {x = 0;}
     if(y >= 255)
    {y = 0;}
     if(z >= 255)
    {z = 1;}
}
