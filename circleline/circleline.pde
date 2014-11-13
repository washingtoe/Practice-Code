int y=0;
void setup(){
  size(displayWidth,displayHeight);
}
void draw(){
  while(y<height){
    ellipse(width/2,y,30,30);
    y+=30;
  }
}
