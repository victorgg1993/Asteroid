Star[] s;
Nave n;
Asteroide[] ast;
Planets[] plan;
int numast = 6;
int numplan = 5;
int numstar = 500; 
void setup() {
  //size(1200, 600);
  fullScreen(FX2D);
  
  
  s = new Star[numstar];
  ast = new Asteroide[numast];
  plan = new Planets[numplan]; // Create the array
  n = new Nave();
  
  for (int i = 0; i < ast.length; i++) {
    ast[i] = new Asteroide();
  }
  for (int i = 0; i < s.length; i++) {
    s[i] = new Star();
  }
  for (int i = 0; i < plan.length; i++) {
    plan[i] = new Planets();
  }
}


void draw() {
  
  background(0);
  n.Mostrar();
  n.keyPressed();
  for (int i = 0; i < ast.length; i++) {
    ast[i].Mostrar();
     ast[i].Animar();
  }
  for (int i = 0; i < s.length; i++) {
    s[i].dibujar();
    s[i].Animar();
  }
  for (int i = 0; i < plan.length; i++) {
    plan[i].Mostrar();
    plan[i].Animar();
  }
  text(frameRate, 50, 50);
}
