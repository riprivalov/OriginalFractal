public void setup()
{
	size(1000,1000);
	background(240,90, 40);
}
public void draw()
{
	fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	design(150,150,400);
}
public void mouseDragged()//optional
{

	redraw();
}
public void design(int x, int y, int len) 
{
	
	if (len<=1){
		triangle(x, y, x+len, y, x+(len)/2, y+len);
	}

else{
		fill(40,50,120);
		triangle(x, y, x+len, y+len, x+(len)/2, y+len);
		fill(332,65,232);
		triangle(x+(len)/2, y, x+len, y, x+(len)/2, y+len);
		fill(233,125,212);
		triangle(x+(len)/2, y, x+len, y+len, x+(len)/2, y+len);
		design(x+5,y+5,len/2);
	}

}