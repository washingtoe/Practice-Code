int x;
int y;
int spdx;
int spdy;
void setup() {
  x=0;
  y=20;
  spdx=16;
  spdy=5;
  noCursor();
  size(displayWidth, displayHeight);
}
//#stoptheboolean2014
void draw() {
  background(0);
  fill(255);
  textSize(32);
  text("#stoptheboolean2014",x,y); 
  x=x+spdx;
  y=y+spdy;
  //spdxchanges
  if(x>width){
    spdx=-10;
  }
  if(x<0){
    spdx=10;
  }
  //spdychanges
  if(y>height){
    spdy=-5;
  }
  if(y<0){
    spdy=5;
  }
}
