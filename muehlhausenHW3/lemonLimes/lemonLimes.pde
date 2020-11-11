
 size(250, 250); 
 background(255);
 int max = 300;  
 int cx = 155;
 int cy = 255;
 int cz = 55;
 fill(cx, cy, cz);



  for(int x = 0; x < max; x += 25)
      {
        for(int y = 0; y < max; y += 25)
           {
             circle(x, y, 10);
             fill(cx+= 5 , cy++, cz-=2);
           }
      }
