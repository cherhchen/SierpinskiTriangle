int length = 30;
public void setup()
{
  size(500,500);
}
public void draw()
{
  background(0);
  sierpinski(20,480,length);
}
public void mousePressed()//optional
{	
  length+=60; 
 //length = (int)(Math.random()*500);
  redraw();
}
public void sierpinski(int x, int y, int len) 
{
  if (len < 30)
  {
    triangle(x, y, x+len, y, x+len/2, y-len);
  }
  else 
  {
  	noFill();
  	stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    //fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
 
}

