boolean i=true;
void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 100, 100, 100);
  noCursor();
  frameRate(4);
}
void draw() {
  
  if (i) {
    background(random(100), 100, 100);
  } else {
    background(0);
  }
}
void mousePressed() {
  i=!i;
}

