class Asteroids
{
  PImage ast;
  String filename;
  float x;
  float y;
  float rot;
  float i;
  //int istr;

  Asteroids()
  {
    x = random( width );
    y = random( height );
    rot = random( 0, 2*PI );
    i = random( 1, 8 );
    //istr = int(i);
    filename = "./data/aster/" + int(i) + ".png";
  }
  
  void load_img()
  {
    ast = loadImage( filename );
  }
  
  void Show()
  {
    image( ast, x, y-20 );
  }

  void Animate()
  {
    //if(x > 0 && x < width){
    //x=x+0.01;
    //}
    if (y > -5 && y < height)
	  {
      y=y+10;
    }
    //x=random(width);
    else
	  {
      y=0;
      x=random(width);
    }
  }
  
  void Print( Asteroids _ast[] )
  {
    for( int i = 0; i < _ast.length; i++ )
    {
      _ast[i].Show();
      _ast[i].Animate();
    }

  }
  
}
