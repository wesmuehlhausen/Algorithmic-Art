void setup() {
 size(1000, 1000); 
 background(0);
 
}
int x = 1;
void draw() {
  
  stroke(random(0, 255), random(0, 255), random(0, 255)); 
  line(random(1, 1000), random(1, 1000), random(1, 1000), random(1, 1000));
  frameRate(x);
  x += 1;
}
