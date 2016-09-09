class asteroid{
  //fields
  int radius;
  int x;
  int y;
  float rho;
  color c;
  float mass;
  
  asteroid(color col){
    this.radius = (int) random(0,250);
    this.x = (int) random(0,displayWidth);
    this.y = (int) random(0,displayHeight);
    this.rho = random(0,10);
    this.c = col;
    this.mass = (float) (this.rho*(4/3)*Math.PI*Math.pow(this.radius,3));
  }
  
  void render(){
    fill(this.c);
    ellipse(this.x,this.y,radius,radius);
  }
  
  void gravity(asteroid other){
    double G = 6.67*Math.pow(10,-11);
    double distance = Math.sqrt(Math.pow((this.x-other.x),2)+Math.pow((this.y-other.y),2));
    double force = (G*this.mass*other.mass)/Math.pow(distance,2);
    float angle = (float) atan((this.x-other.x)/(this.y-other.y));
    this.x += force*cos(angle);
    this.y += force*sin(angle);
    other.x -= force*cos(angle);
    other.y -= force*sin(angle);
  }  
}
