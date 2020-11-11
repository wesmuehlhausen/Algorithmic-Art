//Wesley Muehlhausen

//global variables 

//set initial random color, block speed, and position
float r = random(0, 255), g = random(0, 255), b = random(0, 255);
float speedX = random(5, 15);
float speedY = random(5, 15);
float posX = random(100, 900);
float posY = random(100, 900);
int timer = 0;

//sets initial parameters
void setup()
  {
    size(1800, 1800);
    background(0);
    fill(255);
  }

//runs 60 fps
void draw()
  {
    reset();
    switchTimer();
    cubeMechanics();
    drawShapes();
  }

//used in drawShapes() function to determine where on the moving 
//square the line connects to
float converter(float x)
  {
      x = -50 + (100 * (x/width));
      return x;
  }
    
//sets the parametes to prevent overlapping frames. Covers existing frames
void reset()
  {
    fill(0);
    strokeWeight(0);
    rect(0, 0, width, height); 
    strokeWeight(3);
    noFill();
    timer++;
    stroke(r, g, b);
  }

//randomizes block speed as well as color every half second
void switchTimer()
  {
    if(timer >= 30)
    {
      r = random(0, 255); 
      g = random(0, 255);
      b = random(0, 255);
      speedX = random(-15, 15);
      speedY = random(-15, 15);
      timer = 0;
      stroke(r, g, b);
    }
  }
  
//Bounces block off wall and changes color
void cubeMechanics()
  {
    if((posX - 50 <= 0 || posX + 50 >= width)||(posY - 50 <= 0 || posY + 50 >= height))
      {
        
        speedX *= -1;
        r = random(0, 255); 
        g = random(0, 255);
        b = random(0, 255);
        stroke(r, g, b);
      }
    // while(posX - 50 <= 0)
    //{posX+=5;}
    //while(posX + 50 >= width)
    //{posX-=5;}
    //while(posY - 50 <= 0)
    //{posX+=5;}
    //while(posY + 50 >= height)
    //{posX-=5;}
    posX += speedX;
    posY += speedY;
  }
  
//Determines coordinates of lines and square and draws them
void drawShapes()
  {
    for(float x = 0.00; x <= width; x+=100) //Switch incriment for amount if lines
      {
        float z = converter(x);//determines where the on the moving square the line goes
        
        //connects lines on outside of screen to outside of square
        line(x , 0, posX + z, posY - 50);
        line(0 , x, posX - 50, posY + z);
        line(x , width, posX + z, posY + 50);
        line(width , x, posX + 50, posY + z);
  
        fill(0);
        rect(posX - 50, posY - 50, 100, 100);
      }
  }
