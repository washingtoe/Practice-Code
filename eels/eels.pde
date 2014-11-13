int c=50;
int s=10;
float[]x= new float[c];
float[]y= new float[c];
void setup() {
  size(displayWidth, displayHeight);
  noStroke();
  noCursor();
  fill(200, 20);
}
void draw() {
  background(0);
  rectMode(2);
  for (int i=0; i<c-1; i++) {
    x[i]=x[i+1];
    y[i]=y[i+1];
  }
  x[c-1]=mouseX;
  y[c-1]=mouseY;

  for (int i = 0; i < c; i++) {
    rect(x[i], y[1], 10+i*5, 10+i*5);
  }
  if(keyPressed){
    if(key=='w'){
      y[c-1]-=s;
    }
  }
  if(keyPressed){
    if(key=='s'){
      y[c-1]+=s;
    }
  }
}

