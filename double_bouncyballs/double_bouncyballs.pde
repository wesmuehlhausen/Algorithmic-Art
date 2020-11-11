void setup()  
  {
    size(500, 500);
    //frameRate(60);
    smooth();
    background(255);
  }
int x = int(random(51, 449));
int y = int(random(51, 449));
int x1 = int(random(51, 449));
int y1 = int(random(51, 449));
int incX = 2;
int incY = 3;
int incX1 = 1;
int incY1 = 5;
void draw()
  {
  /*if((x + 100) == x1 || (x-100) == x1)
    {incX *= -1;}
    if((y + 100) == y1 || (y-100) == y1)
    {incY *= -1;}*/
  /*if((x-x1) <= 100 || ((x1-x) <= 100)){
  if((x-x1) <= 100 || ((x1-x) <= 100))
    {
      incX *=-1;
      incX1 *=-1; 
      incY *=-1;
      incY1 *=-1; 
    }}*/
    
  if(y >= 450 || y <= 50){incY *= -1;}  
  if(x >= 450 || x <= 50){incX *= -1;}
  if(y1 >= 450 || y1 <= 50){incY1 *= -1;}  
  if(x1 >= 450 || x1 <= 50){incX1 *= -1;}
      fill(255);
      stroke(255);
      strokeWeight(1);
      rect(0, 0, 500, 500);
      fill(random(0,255), random(0,255), random(0,255));
      strokeWeight(5);
      stroke(random(0,255), random(0,255), random(0,255));
      circle(x, y, 100);
      circle(x1,y1,100);
      x += incX;
      y += incY;
      x1 += incX1;
      y1 += incY1;
      
      
      
    
  }
