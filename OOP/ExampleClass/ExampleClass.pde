Ball b;
void setup() {
  b= new Ball();
  size(displayWidth,displayHeight);
}
void draw() {
//  background(0);
  b.move();
  b.bounce();
  b.display();
}
class Ball {
  //properties
  float sz;
  PVector loc, vel,acc;
  Ball() {
    sz= 50;
    loc= new PVector(width/2, height/2);
    vel= new PVector(random(5),1);
    acc= new PVector(0,1);
  }
  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  void bounce() {
    if (loc.x>width-sz/2 || loc.x<sz/2) {
      vel.x*=-1;
    }
    if (loc.y>height-sz/2 || loc.y<sz/2) {
      vel.y*=-1;
    }
  }
}

