size(700, 350);
background(0);
fill(255);
stroke(255);
rect(350, 0, 700, 350);

for(int x = 25;   x < 340; x += 30)
 { 
  for(int y = 25; y < 340; y += 30)
    {
      circle(x, y, 20);
     line(x, y, 175, 175);
    }
 } 
 
 fill(0);
 stroke(0);
 for(int x = 375;   x < 690; x += 30)
 { 
  for(int y = 25; y < 340; y += 30)
    {
      circle(x, y, 20);
       line(x, y, 525, 175);
    }
 }
 
 

 
