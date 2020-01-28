public void setup()
{
	size(500,500);

}
public void draw()
{
	sierpinski(200,300,40);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len <= 20)
	{
		triangle(x, y, x+len, y, x+len/2, len);
	}
	else 
	{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len-20);
		sierpinski(x+len/4, y-len/2, len-20);
	}
}