//Map function use
void setup()
{
  size(500,500);
  strokeWeight(12);
}

void draw()
{
  background(200);  //set to 255 to show limiting effect of display
  stroke(255);
  line(0, 0, mouseX, mouseY);  //white line
  stroke(0);
  float mx = map(mouseX, 0, width, 0, 80);  //val to convert, min of val, max of val, min of target, max of target
  line(80, 60, mx, mouseY);  //black line
}
