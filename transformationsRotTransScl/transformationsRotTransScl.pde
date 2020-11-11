size(500, 500);
square(0,0,100);

//translate
translate(250, 250); // moves origin to the middle of the circle
fill(255, 0, 0);
square(-50,-50,100);

//rotate
pushMatrix();
  rotate(radians(-45)); //rotates 45 degrees positive to x axis
  stroke(0, 255, 0);
  line(0,0,100, 0);
  strokeWeight(10);
  triangle(100, 10, 100, -10, 110, 0);
popMatrix();//gets rid of transformations that were made after the prev pushMatrix()


/*
  Push Pop Matrixes are for managing the changes you
  make with translate, rotate, and scale, I.E. the 
  transformations. Anything after pushMatrix() will 
  be reset after the popMatrix() function is called 
*/
stroke(0, 0, 200);
line(0,0,100, 0);
strokeWeight(10);
triangle(100, 10, 100, -10, 110, 0);
