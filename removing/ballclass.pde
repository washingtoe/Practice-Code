class Ball {
  //properties
  float sz;
  PVector loc, vel, acc;
  float h, s, b, a;
  Ball(float tx, float ty,float tsz) {
    sz= tsz;
    loc= new PVector(tx,ty);
    vel= new PVector(random(10), 1);
    acc= new PVector(0, random(10));
    h= random(360);
    s=100;
    b=100;
    a=100;
  }
  void display() {
    fill(h, s, b, a);
//    a--;
    ellipse(loc.x, loc.y, sz, sz);
  }
  void move() {
//    vel.add(acc);
    loc.add(vel);
  }
  void bounce() {
    if (loc.x>width-sz/2 || loc.x<sz/2) {
      vel.x*=-1;
    }
    if (loc.y>height-sz/2) {
      loc.y = height - sz/2;
      vel.y = -abs(vel.y);
    }
    if(loc.y<sz/2){
      loc.y=sz/2;
      vel.y=abs(vel.y);
    }
  }
  void collide(Ball other) {
    if (loc.dist(other.loc)< sz/2 + other.sz/2) {
      vel=PVector.sub(loc, other.loc);
      vel.normalize();
    }
  }
}
