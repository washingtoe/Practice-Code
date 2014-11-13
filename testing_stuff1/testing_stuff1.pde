float f1;
float f4;
float f2;
float f5;
float f3;
float f6;
void setup(){
  size(displayWidth,displayHeight);
  f1=0;
  f4=0;
  f2=50;
  f5=0;
  f3=0;
  f6=50;
}

void draw(){
  background(0);
  ellipse(f1,f4,30,30);
  ellipse(f2,f5,30,30);
  ellipse(f3,f6,30,30);
  f1=f1+2;
  f4=f4+2;
  f2=f2+2;
  f5=f5+2;
  f3=f3+2;
  f6=f6+2;
}
