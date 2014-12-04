int c=25;
Ball[] b= new Ball[c];
void setup() {
  for (int i=0;i<c;i++) {
    b[i]= new Ball(random(200,300));
  }
  size(displayWidth, displayHeight);
  noStroke();
  noCursor();
  colorMode(HSB,360,100,100,100);
}
void draw() {
  background(0,0,0);
  for(int i=0;i<c;i++){
  b[i].move();
  b[i].bounce();
  b[i].display();
  text(frameRate,10,20);
  }
}

class Ball {
  //properties
  float sz;
  PVector loc, vel, acc;
  float h,s,b,a;
  Ball(float tsz) {
    sz= tsz;
    loc= new PVector(random(sz/2,1600-sz/2), random(displayHeight));
    vel= new PVector(random(10), 1);
    acc= new PVector(0, random(10));
    h= random(120,150);
    s=100;
    b=100;
    a=20;
  }
  void display() {
    fill(h,s,b,a);
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
//  void collide(){
//    
//  }
}


