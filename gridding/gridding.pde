int dist = 10;
void setup() {
  size(displayWidth, displayHeight);
  noCursor();
}
void draw() {
  for (int x=0; x<width; x+=dist) {
    line(x, 0, x, height);
  }
  for (int y=0; y<height; y+=dist) {
    line(0,y,width,y);
  }
}
