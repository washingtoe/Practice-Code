float count=10;
float s=10;
PVector[] loc;
PVector[] vel;
PVector[] acc;
void setup() {
  size(displayWidth, displayHeight);
  loc[]= new PVector(random(s/2, width-s/2), random(s/2, height-s/2));
  vel[]= new PVector(10, 10);
  noStroke();
  noCursor();
}
void draw() {
  background(255);
  for (int i;i>count;i++) {
    loc[i].add(vel);
    fill(0);
    if (loc[i].dist(loc2)<s/2+s2/2) {
      if (loc2.x>loc[i].x) {
        vel.x=-abs(vel.x);
      } else {
        vel.x=abs(vel.x);
      }
      if (loc2.y>loc[i].y) {
        vel.y=-abs(vel.y);
      } else {
        vel.y=abs(vel.y);
      }
    }
    if (loc[i].x+s/2>width) {
      vel.x*=-1;
    }
    if (loc[i].x-s/2<0) {
      vel.x*=-1;
    }
    if (loc[i].y+s/2>height) {
      vel.y*=-1;
    }
    if (loc[i].y-s/2<0) {
      vel.y*=-1;
    }
    if (loc2.x+s2/2>width) {
      vel2.x*=-1;
    }
    if (loc2.x-s2/2<0) {
      vel2.x*=-1;
    }
    if (loc2.y+s2/2>height) {
      vel2.y*=-1;
    }
    if (loc2.y-s2/2<0) {
      vel2.y*=-1;
    }
    ellipse(loc[i].x, loc[i].y, s, s);
  }
}

