asteroid helen;
asteroid troy;

void setup(){
  size(displayWidth, displayHeight);
  helen = new asteroid(color(255,0,0));
  troy = new asteroid(color(255,0,255));
}

void draw(){
  background(0);
  helen.render();
  troy.render();
  troy.gravity(helen);
  helen.gravity(troy);
}
