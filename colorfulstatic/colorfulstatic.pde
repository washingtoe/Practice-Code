int h=0;
int hc=5;
int b=0;
int bc=15;
int s=20;
void setup() {
  size(displayWidth, displayHeight);
  noCursor();
  colorMode(HSB);
  frameRate(15);
}
void draw() {
  for(int x=0; x<width; x+=s){
    for(int y=0; y<height; y+=s){
      if(mouseX>=x&&mouseX<=x+s&&mouseY>=y&&mouseY<=y+s){
        fill(0);
      }
      else{
        fill(h,100,b);
        h+=hc;
        b+=bc;
        if(h>360){
          h=0;
        }
        if(b>100){
          bc=-bc;
        }
        if(b<0){
          bc=-bc;
        }
      }
      rect(x,y,s,s);
    }
  }
}

