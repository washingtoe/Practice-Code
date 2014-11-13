int  
int[]x= {
  100, 400, 800
};
int[]y= {
  300, 600, 900
};
int[]sz= {
  10, 20, 30
};
int[]xc= {
  50, 10, 80
};
int[]yc= {
  30, 60, 90
};
int[]h= {
  0,60,120
};
void setup() {
  size(displayWidth,displayHeight);
  textSize(20);
  noCursor();
  frameRate(5);
  colorMode(HSB,360,100,100);
}
void draw() {
  background(0);
  for(int b=5;
  for (int i=0; i <x.length; i++) {
    fill(h[i],100,100);
    ellipse(x[i], y[i], sz[i], sz[i]);
    if (x[i]+sz[i]>width || x[i]<0) {
      xc[i]=-xc[i];
    }
    if (y[i]+sz[i]>height || y[i]<0) {
      yc[i]=-yc[i];
    }
    x[i]+=xc[i];
    y[i]+=yc[i];
  }
}
