/*
 Wesley Muehlhausen | Andrew Michael, Date: Oct 5, 2019
 HW4 CPSC 211
 Description: Our program is a whack-a-mole type of program where mole circles will pop up
 and the player tries to hit them. There is a scoring system which rewards 
 the player for the amount of time they can hit each mole. There is also a fast moving 
 bonus that can be hit for extra points
 */
 
//global variables
float xPosCirc;
float yPosCirc;
float xPosBonus;
float yPosBonus;
float spdX = random(5,10);
float spdY = random(5,10);
int gameSpeed = -1;
int score = 0;


//sets the initial size parameters for the display
void setup() 
{
  size(500, 500);
  xPosBonus = random(100,500);
  yPosBonus = random(100,500);
  
}


//calls all functions to run the program
void draw() 
{
  drawBackground();
  gameName();
  bonus();
  circleLocation();
  drawCircle();
  hammer();
  hit();
}

//draws and moves bonus square
void bonus()
{
  if(xPosBonus >= 475 || xPosBonus <= 0)
  {
     spdX *= -1;
  }
  if(yPosBonus >= 475 || yPosBonus <= 0)
  {
     spdY *= -1;
  }
  xPosBonus += spdX;
  yPosBonus += spdY;
  fill(0, 255,255);
  square(xPosBonus, yPosBonus, 25);
}

//Draws Background
void drawBackground()
{
  PImage imgBK;
  imgBK = loadImage("grass.png");  
  background(imgBK);
}


//Displays the name of the game and the score
void gameName() 
{
  PFont font;
  fill(#FF6403);
  font = loadFont("titleFont.vlw");
  textFont(font);
  textSize(25);
  text("Whack-a-Circle", 70, 25);
  text("Score:", 350, 25);
  text(score, 450, 25);
  noFill();
}


//Calculates mole circle's location
void circleLocation() 
{
  float startCenter = 75;
  float centerInc = 116.67;
  gameSpeed++;
  if (gameSpeed % 60 == 0) 
  {
    xPosCirc = startCenter + centerInc * int(random(0, 4));
    yPosCirc = startCenter + centerInc * int(random(0, 4));
  }
}


//This function creates a hammer sprite
void hammer() 
{
  PImage imgH;
  imgH = loadImage("hammer.png");  
  int hammerSize = 0;
  stroke(#5F3020);
  for (hammerSize = 0; hammerSize < 20; hammerSize++) 
  {
    image(imgH, mouseX -40, mouseY);
  }
  stroke(0);
}


//draws the mole circle that the user tries to hit
void drawCircle() 
{
  PImage imgM;
  imgM = loadImage("moleM.png");  
  image(imgM, xPosCirc -50, yPosCirc -50);
}


//Checks if user hit the mole or bonus square, allocated points based on how long
void hit() 
{
  //for mole
  if (mousePressed) 
  {
    if ((mouseX >= xPosCirc - 50 && mouseX <= xPosCirc+50) && (mouseY >= yPosCirc - 50 && mouseY <= yPosCirc+50)) 
    {
      fill(255, 0, 0);
      circle(xPosCirc, yPosCirc, 100);
      score++;
      fill(0, 255, 0);
      PFont font;
      font = loadFont("titleFont.vlw");
      textFont(font);
      textSize(25);
      text("HIT", mouseX, mouseY);
      noFill();
    }
  }
  //for bonus
  if (mousePressed) 
  {
    if ((mouseX >= xPosBonus && mouseX <= xPosBonus+25) && (mouseY >= yPosBonus && mouseY <= yPosBonus+25)) 
    {
      background(255, 0, 0);
      score+= 50;
      fill(0, 255, 0);
      PFont font;
      font = loadFont("titleFont.vlw");
      textFont(font);
      textSize(25);
      text("HIT", mouseX, mouseY);
      noFill();
    }
  }
}
