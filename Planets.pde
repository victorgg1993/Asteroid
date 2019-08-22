class Planets{
  PImage plan;
  String filename;
  float xs;
  float ys;
  float x;
  float y;
  //float rot;
  float i;
  int istr;
  int xs1,ys1;

  Planets() {
    xs=random(1,300);
    xs=random(1,300);
    xs1=int(xs);
    ys1=int(ys);
    x=random(width);
    y=random(height);
 //   rot=random(0, 2*PI);
    i= random(18, 27);
    istr=int(i);
    filename = "/data/planets/planet" +istr + ".png";
  }

  void Mostrar() {
 
    plan = loadImage(filename);
    plan.resize(xs1,ys1);
    image(plan, x, y-20);
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
