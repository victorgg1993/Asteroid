class Star {
  float x;
  float y;
  
  Star() {
    x= random(width);
    y= random(height);
  }
  void dibujar() {
    noStroke();
    fill(255);
    ellipse(x, y, 1, 1);
  }
  void Animar() {
    //if(x > 0 && x < width){
    //x=x+0.01;
    //}
    if (y > -5 && y < height) {

      y=y+5;
    }
    //x=random(width);
    else {
      y=0;
      x=random(width);
    }
  }
}
