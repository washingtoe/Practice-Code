float x;
float y;
float spdx;
float spdy;
//dvd thing
void setup(){
  size(displayWidth,displayHeight);
  noCursor();
  noStroke();
  background(0);
  x=10;
  y=50;
  spdx=25;
  spdy=30;
}
void draw(){
  fill(random(255),random(255),random(255),100);
  ellipse(x,y,30,30);
  x=x+spdx;
  y=y+spdy;
  //xchanges
  if(x>displayWidth){
    spdx=-25;
  }
  if(x<0){
    spdx=25;
  }
  //ychanges
  if(y>displayHeight){
    spdy=-30;
  }
  if(y<0){
    spdy=30;
  }
}
