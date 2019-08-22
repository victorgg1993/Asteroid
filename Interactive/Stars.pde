class Star
{
  float x;
  float y;
  
  Star()
  {
    x= random(width);
    y= random(height);
  }
	
  void Draw()
  {
    noStroke();
    fill(255);
    ellipse(x, y, 1, 1);
  }
  
  void Print( Star _star[] )
  {
    for( int i = 0; i < _star.length; i++ )
    {
      _star[i].Draw();
      _star[i].Animate();
    }
  }
	
  void Animate()
  {
  	//if(x > 0 && x < width){
  	//x=x+0.01;
  	//}
  	if( y > -5 && y < height )
  	{
  
  	  y=y+5;
  	}
  	//x=random(width);
  	else
  	{
  	  y=0;
  	  x=random( width );
  	}
  }

}
