void setup() {
    //setup can only be called once in the code
  size(400, 400);
  stroke(255);
  background(192, 64, 0);
}

void draw() {
    //draw gets called constantly
  //background(192, 64, 0);
  line(150, 25, mouseX, mouseY);
}
 
