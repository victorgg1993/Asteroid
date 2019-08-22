class Asteroide {
  PImage ast;
  String filename;
  float x;
  float y;
  float rot;
  float i;
  int istr;

  Asteroide() {
    x=random(width);
    y=random(height);
    rot=random(0, 2*PI);
    i= random(1, 8);
    istr=int(i);
    filename = "/data/aster/" +istr + ".png";
  }

  void Mostrar() {
    ast = loadImage(filename);
    image(ast, x, y-20);
  }

  void Animar() {
    //if(x > 0 && x < width){
    //x=x+0.01;
    //}
    if (y > -5 && y < height) {

      y=y+10;
    }
    //x=random(width);
    else {
      y=0;
      x=random(width);
    }
  }
}
