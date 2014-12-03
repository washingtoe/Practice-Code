int c=1000;
Ball[] b= new Ball[c];
void setup() {
  for (int i=0;i<c;i++) {
    b[i]= new Ball();
  }
  size(displayWidth, displayHeight);
  noStroke();
  noCursor();
}
void draw() {
  background(0);
  for(int i=0;i<c;i++){
  b[i].move();
  b[i].bounce();
  b[i].display();
  }
}

class Ball {
  //properties
  float sz;
  PVector loc, vel, acc,shock;
  Ball() {
    sz= 50;
    loc= new PVector(random(100,displayWidth-100), random(displayHeight));
    vel= new PVector(random(10), 1);
    acc= new PVector(0, 5);
    shock= new PVector(0,10);
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
      loc.y = height - sz/2;
      vel.y = -abs(vel.y);
    }
  }
}


