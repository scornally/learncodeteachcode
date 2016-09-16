class asteroid{
  //fields
  int radius;
  PVector loc;
  PVector vel;
  PVector accel;
  float rho;
  color c;
  float mass;
  
  asteroid(color col){
    this.radius = (int) random(100,250);
    loc = new PVector(random(0,displayWidth), random(0,displayHeight));
    vel = new PVector(random(-5,5), random(-8,8));
    accel = new PVector(0,0);
    this.rho = 1;
    this.c = col;
    this.mass = (float) (this.rho*(4/3)*Math.PI*Math.pow(this.radius,3));
  }
  
  void render(){
    fill(this.c);
    ellipse(this.loc.x,this.loc.y,radius,radius);
  }
  
  void gravity(asteroid other){
    accel.mult(0);
    double G = 0.0001;
    PVector r = PVector.sub(this.loc, other.loc);
    r.normalize();
    float rMag = PVector.dist(this.loc, other.loc);
    if(rMag<1.0) rMag = 1.0;
    float gravStrength = (float) ((-1)*G*this.mass/(rMag*rMag));  
    accel.add(PVector.mult(r,gravStrength));
    vel.add(accel);
    loc.add(vel);
  }  
}
