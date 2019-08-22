
class Spaceship
{
  PImage nave;
  float x;
  float y;
  float vel;

  Spaceship()
  {
    vel=50;
    x=width/2;
    y=height/2;
  }
	
  void Show()
  {
	nave = loadImage("./data/spaceship/destroyer.png");
	image(nave,x,y,100,100 );
  }	
	
  void keyPressed()
  {
    if (keyPressed==true)
	{
      if (keyCode == LEFT && x>10 )x=x-vel;
      if (keyCode == RIGHT && x< width-100)x=x+vel;
      if (keyCode == UP && y>0)y=y-vel;
      if (keyCode == DOWN && y<height-100)y=y+vel;
    }
  }
}
