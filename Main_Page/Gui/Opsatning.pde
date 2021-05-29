import controlP5.*;
ControlP5 cp5;

//instance
Gui g;

void setup(){
  size(400,600);
  smooth();
  noStroke();
  cp5 = new ControlP5(this);
   g = new Gui();
}

void draw(){
  background(0);
}
