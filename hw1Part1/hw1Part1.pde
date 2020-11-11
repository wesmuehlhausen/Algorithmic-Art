void setup() {
 size(1000, 1000); 
 background(0);

}

void draw() {
  
  stroke(random(0, 255), 0, 0);
  line(random(100, 350), random(100, 350), random(100, 350), random(100, 350));
  
  stroke(0, random(0, 255), 0);
  line(random(650, 900), random(100, 350), random(650, 900), random(100, 350));
  
  stroke(0, 0, random(0, 255));
  line(random(100, 900), random(700, 900), random(100, 900), random(700, 900));
  
}

 void keyPressed() {
  save("hw1Part1.png");
}
