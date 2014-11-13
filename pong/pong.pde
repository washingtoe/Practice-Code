//ball
int x=width/2;
int y=height/2;
int xc=10;
int yc=10;
int s= 10;
//paddleleft
int lpx=0;
int lpy=0;
int lpw=10;
int lph=100;
//paddleright
int rpx=width-10;
int rpy=0;
int rpw=10;
int rph=100;
void setup() {
  size(displayWidth, displayHeight);
  noCursor();
}

void draw() {
  background(0);

  //ball
  rect(x-5, y-5, s, s);
  x+=xc;
  y+=yc;
  //xchanges
  if (x>width-10) {
    xc=-xc;
  }
  if (x<0) {
    xc=-xc;
  }
  //ychanges
  if (y>height-10) {
    yc=-yc;
  }
  if (y<0) {
    yc=-yc;
  }

  //paddleleft
  rect(lpx, lpy, lpw, lph);
  if (keyPressed) {
    if (key == 'w') {
      lpy-=10;
    } else {
      lpy+=0;
    }
  }
  if (keyPressed) {
    if (key == 's') {
      lpy+=10;
    } else {
      lpy+=0;
    }
  }
  //paddleright
  rect(rpx, rpy, rpw, rph);
}

