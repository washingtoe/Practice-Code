PImage faic;
void setup(){
  size(480,360);
  faic=loadImage("jp.png");
}
void draw(){
  image(faic,0,0,width,height);
}
