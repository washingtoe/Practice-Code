boolean shape = true;
void setup() {
  size(300, 300);
  frameRate(5);
}

void draw() {
  background(0);
  if (shape) {
    rect(random(width), random(height), 50, 50);
  } else {
    ellipse(random(width), random(height), 50, 50);
  }
}


void mousePressed() {
  shape=!shape;
}

