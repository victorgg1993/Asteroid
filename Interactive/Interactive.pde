

Spaceship nave;
Star star_handler = new Star();
Star[] estrellas;
Asteroids asteroid_handler = new Asteroids();
Asteroids[] asteroides;
Planets planet_handler = new Planets();
Planets[] planetas;

int numast = 6;
int numplan = 5;
int numstar = 20; 

public void settings()
{
  size(1200, 600);
}

void setup() // to do: limpiar esos fors tan guarros en cada clase que le toque
{
	//size(1200, 600);
  //fullScreen( FX2D );

	estrellas = new Star[numstar];
	asteroides = new Asteroids[numast];
	planetas = new Planets[numplan]; // Create the array
	nave = new Spaceship();

 	for( int i = 0; i < asteroides.length; i++ )
	{
		asteroides[i] = new Asteroids();
	}

   for( int i = 0; i < asteroides.length; i++ )
  {
    asteroides[i].load_img();
  }

	for( int i = 0; i < estrellas.length; i++ )
	{
		estrellas[i] = new Star();
	}

	for( int i = 0; i < planetas.length; i++ )
	{
		planetas[i] = new Planets();
	}

  for( int i = 0; i < planetas.length; i++ )
  {
    planetas[i].load_img();
  }




}


void draw()
{
	background(0);

  asteroid_handler.Print(asteroides);
  star_handler.Print( estrellas );
  planet_handler.Print( planetas );

  nave.Show();
  nave.keyPressed();
  
	text( frameRate, 50, 50 );
}


















// endline
