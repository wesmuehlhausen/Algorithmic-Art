/*
Wesley Muehlhausen
Makeshift Microsoft Paint
*/
int toolBarPos = 1;
int sizeBarPos = 8;

void setup()
  {
    size(2500, 1500);
    frameRate(120);
    smooth();
    background(255);
  }
  
void draw()
  {
    //selectLineColor();
    drawColorBar();
    drawPenSize();
    toolBarHighlighter();
    penMechanics();
  }
  
//void selectLineColor() //User clicks to select color or line
//  {
    
//  }
  
void drawColorBar()
  {
  stroke(0);
  strokeWeight(2);
  fill(255, 0, 0);//Red
  square(4, 4, 50);
  fill(255, 0, 255);//Pink
  square(4, 54, 50); 
  fill(0, 0, 255);//Blue
  square(4, 104, 50); 
  fill(0, 255, 255);
  square(4, 154, 50);
  fill(0, 255, 0);
  square(4, 204, 50);
  fill(255, 255, 0);
  square(4, 254, 50);
  fill(0);
  square(4, 304, 50);
  fill(255);
  square(4, 354, 50);
  fill(255);
  square(4, 404, 50);
  fill(255);
  square(4, 454, 50);
  
  noFill();
  strokeWeight(3);
  rect(2, 2, 54, 504);
  stroke(0);
  }
  
void drawPenSize()
  {
  stroke(0);
  
  strokeWeight(3);
  point(29, 379);
  
  strokeWeight(10);
  point(29, 429);
  
  strokeWeight(25);
  point(29, 479);
  
  
  strokeWeight(3);
  square(4, 354, 50);
  
  square(4, 404, 50);
  
  square(4, 454, 50);
  }
  
void toolBarHighlighter()
  {
    if((mouseX >= 4 && mouseX <= 54) && (mouseY >= 4 && mouseY <= 54))
      {
      if(mousePressed)
        {
        toolBarPos = 1;
        }
      }
    else if((mouseX >= 4 && mouseX <= 54) && (mouseY >= 54 && mouseY <= 104))
      {
      if(mousePressed)
        {
        toolBarPos = 2;
        }
      }
    else if((mouseX >= 4 && mouseX <= 54) && (mouseY >= 4 && mouseY <= 154))
      {
      if(mousePressed)
        {
        toolBarPos = 3;
        }
      }
    else if((mouseX >= 4 && mouseX <= 54) && (mouseY >= 54 && mouseY <= 204))
      {
      if(mousePressed)
        {
        toolBarPos = 4;
        }
      }
    else if((mouseX >= 4 && mouseX <= 54) && (mouseY >= 4 && mouseY <= 254))
      {
      if(mousePressed)
        {
        toolBarPos = 5;
        }
      }
    else if((mouseX >= 4 && mouseX <= 54) && (mouseY >= 54 && mouseY <= 304))
      {
      if(mousePressed)
        {
        toolBarPos = 6;
        }
      }
    else if((mouseX >= 4 && mouseX <= 54) && (mouseY >= 4 && mouseY <= 354))
      {
      if(mousePressed)
        {
        toolBarPos = 7;
        }
      }
    
    
    if((mouseX >= 4 && mouseX <= 54) && (mouseY >= 54 && mouseY <= 404))
      {
      if(mousePressed)
        {
        sizeBarPos = 8;
        }
      }
    else if((mouseX >= 4 && mouseX <= 54) && (mouseY >= 54 && mouseY <= 454))
      {
      if(mousePressed)
        {
        sizeBarPos = 9;
        }
      }  
    else if((mouseX >= 4 && mouseX <= 54) && (mouseY >= 54 && mouseY <= 504))
      {
      if(mousePressed)
        {
        sizeBarPos = 10;
        }
      }  
     
    
    
    strokeWeight(5);
    stroke(255, 166, 0);
    noFill();
    if(toolBarPos == 1)
    {
      square(7, 7, 43);
      stroke(255, 0, 0);
    }
    else if(toolBarPos == 2)
    {
      square(7, 57, 43);
      fill(255, 0, 255);
    }
    else if(toolBarPos == 3)
    {
      square(7, 107, 43);
    }
    else if(toolBarPos == 4)
    {
      square(7, 157, 43);
    }
    else if(toolBarPos == 5)
    {
      square(7, 207, 43);
    }
    else if(toolBarPos == 6)
    {
      square(7, 257, 43);
    }
    else if(toolBarPos == 7)
    {
      square(7, 307, 43);
    }
    
    
    stroke(255, 0, 0);
    noFill();
    if(sizeBarPos == 8)
    {
      square(7, 357, 43);
      strokeWeight(3);
    }
    else if(sizeBarPos == 9)
    {
      square(7, 407, 43);
      strokeWeight(10);
    }
    else if(sizeBarPos == 10)
    {
      square(7, 457, 43);
      strokeWeight(25);
    }
    
  }
  
void penMechanics()
  {
    if(mousePressed)
      {
        point(mouseX, mouseY);
      }
  }
