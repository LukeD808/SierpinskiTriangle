int r = 0;
int g = 0;
int b = 0;
int hold = 0;
public void setup()
{
  background(0);
  size(1000,1000);
  noStroke();
}
public void draw()
{
    fill(0,0,0);
    rect(0,0,1000,1000);
    sierpinski(0,1000,1000);
}
public void mouseDragged()//optional
{
   hold += 10;
}
public void sierpinski(int x, int y, int len) 
{
  if (hold >= 2000){
    hold = -1000;
    x = 0;
    y = 1000;
  }
  if (len < 10){
    fill(r,g,b);
    triangle(x+hold, y, x+len+hold, y, x+(len/2)+hold, y-len);
  }
  else{
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
    r = (int)(Math.random()*256);
    g = (int)(Math.random()*256);
    b++;
  }
}

public void sierpinskiCarpet()
{
  //This was meant as a joke.
}
