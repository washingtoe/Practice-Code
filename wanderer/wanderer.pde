float x, y;
float vx, vy;
float ax, ay;
int s=80;
void setup() {
  ax=0;
  ay=0;
  vx=0;
  vy=0;
  noStroke();
  noCursor();
  size(displayWidth, displayHeight);
  x=width/2;
  y=height/2;
  background(255);
}

void draw() {
  vx+=ax;
  vy+=ay;
  x+=vx;
  y+=vy;
  if (x+s/2<0) {
    x=width+s/2;
  }
  if (x-s/2>width) {
    x=-s/2;
  }
  if (y+s/2<0) {
    y=height+s/2;
  }
  if (y-s/2>height) {
    y=-s/2;
  }
  fill(random(100), 80);
  ellipse(x, y, s, s);
  vx=constrain(vx, -10, 10);
  vy=constrain(vy, -10, 10);
  ax=random(-2, 2);
  ay=random(-2, 2);
}

