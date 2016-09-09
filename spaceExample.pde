PImage bg;
asteroid helen;
asteroid troy;

void setup(){
  size(displayWidth, displayHeight);
  bg = loadImage("images/hubble.jpg");
  helen = new asteroid(color(255,0,0));
  troy = new asteroid(color(255,0,255));
}

void draw(){
  image(bg, 0, 0);
  helen.render();
  troy.render();
  helen.gravity(troy);
}
