float converter;
float rT = random(0, 255), gT = random(0, 255), bT = random(0, 255);
//      rL = random(0, 255), gL = random(0, 255), bL = random(0, 255),
//      rR = random(0, 255), gR = random(0, 255), bR = random(0, 255), 
//      rB = random(0, 255), gB = random(0, 255), bB = random(0, 255);
int change = 0;
float speedX = random(5, 10);
float speedY = random(5, 10);
float posX = random(100, 900);
float posY = random(100, 900);

void setup()
  {
  smooth();
  size(1000, 1000);
  background(0);
  frameRate(15);
  fill(255);
  
  }
  
void draw()
  {
  fill(0);
  rect(0, 0, 1000, 1000); 
  noFill();
  //rect(posX - 50, posY - 50, 100, 100);  
  //TOP
  //color change stroke
  change++;
  if(change >= 30)
    {
      rT = random(0, 255); 
      gT = random(0, 255);
      bT = random(0, 255);
      //rR = random(0, 255); 
      //gR = random(0, 255);
      //bR = random(0, 255);
      //rB = random(0, 255); 
      //gB = random(0, 255);
      //bB = random(0, 255);
      //rL = random(0, 255); 
      //gL = random(0, 255);
      //bL = random(0, 255);
      speedX = random(-10, 10);
      speedY = random(-10, 10);
      change = 0;
    }
  stroke(rT, gT, bT);
  //stroke(rL, gL, bL);
  //stroke(rR, gR, bR);
  //stroke(rB, gB, bB);
  //Drawing the lines
  
  //rect(posX - 50, posY - 50, 100, 100);
  if(posX - 50 <= 0 || posX + 50 >= 1000)
    {
      speedX *= -1;
      rT = random(0, 255); 
      gT = random(0, 255);
      bT = random(0, 255);
      //rR = random(0, 255); 
      //gR = random(0, 255);
      //bR = random(0, 255);
      //rB = random(0, 255); 
      //gB = random(0, 255);
      //bB = random(0, 255);
      //rL = random(0, 255); 
      //gL = random(0, 255);
      //bL = random(0, 255);
      //stroke(rL, gL, bL);
      //stroke(rR, gR, bR);
      //stroke(rB, gB, bB);
      stroke(rT, gT, bT);
    }
    if(posY - 50 <= 0 || posY + 50 >= 1000)
    {
      speedY *= -1;
      //stroke(rL, gL, bL);
      //stroke(rR, gR, bR);
      //stroke(rB, gB, bB);
      stroke(rT, gT, bT);  
    }
  posX += speedX;
  posY += speedY;
  
  
  
  for(float x = 0.00; x <= 1000; x+=10)
    {
      converter = -50.0 + (100 * (x/1000));
      line(x , 0, posX + converter, posY - 50);
      line(0 , x, posX - 50, posY + converter);
      line(x , 1000, posX + converter, posY + 50);
      line(1000 , x, posX + 50, posY + converter);
      //stroke(255, 0, 0);
      //line(posX, posY-25, posX, posY+25);
      //line(posX-25, posY, posX+25, posY);
      
      fill(0);
      rect(posX - 50, posY - 50, 100, 100);
    }
  //////////////////////
  /*
  //TOP
  //color change stroke
  change++;
  if(change >= 60)
    {
      r = random(0, 255); 
      g = random(0, 255);
      b = random(0, 255);
      speedX = random(-10, 10);
      speedY = random(-10, 10);
      change = 0;
    }
  stroke(r, g, b);
  
  //Drawing the lines
  
  
  */
  }
  
  //line(0,0, mouseX - 50, mouseY - 50);
  //line(1000,0, mouseX + 50, mouseY - 50);
  //line(0,1000, mouseX - 50, mouseY + 50);
  //line(1000,1000, mouseX + 50, mouseY + 50);
