float b=50;
float c;
PVector loc;
PVector v;
PVector a;
int s=5;
void setup() {
  noStroke();
  noCursor();
  size(displayWidth, displayHeight);
  loc=new PVector(width/2,height/2);
  v=new PVector(0,0);
  a=new PVector(0,0);
  background(255);
}

void draw() {
  v.add(a);
  loc.add(v);
  if (loc.x+s/2<0) {
    loc.x=width+s/2;
  }
  if (loc.x-s/2>width) {
    loc.x=-s/2;
  }
  if (loc.y+s/2<0) {
    loc.y=height+s/2;
  }
  if (loc.y-s/2>height) {
    loc.y=-s/2;
  }
  fill(b+c, 80);
  c=random(-5,5);
  b=constrain(b,0,100);
  ellipse(loc.x,loc.y,s,s);
  a.set(random(-2,2),random(-2,2));
  v.limit(10);
}

