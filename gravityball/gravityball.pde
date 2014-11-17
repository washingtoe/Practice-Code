int s=60;
float x = 300;
float y = 60;
float ax = 0;
float ay = 3;
float vx = 50;
float vy = 10;
float yx = 30;
void setup() {
  noStroke();
  noCursor();
  size(displayWidth, displayHeight);
//  frameRate(10);
//  background(0);
}
void draw() {
  background(0,5);
  vx+=ax;
  vy+=ay;
  x+=vx;
  y+=vy;
  fill(255);
  ellipse(x, y, s, s);
  if (x+s/2>width || x-s/2<0) {
    vx=-vx;
  }
  if(y+s/2>height || y-s/2<0) {
    y=height-s/2;
    vy=-vy;
//    vx*=.9;
  }
}

