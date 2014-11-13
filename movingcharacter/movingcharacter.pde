int pbx=40;
int pby=70;
void setup() {
  size(displayWidth, displayHeight);
  noCursor();
}
void draw() {
  background(0);
  fill(255);
  stroke(0);
  // head
  ellipse(pbx, pby-40, 40, 40);
  line(pbx-5, pby-30, pbx+5, pby-30);
  ellipse(pbx-10, pby-40, 10, 10);
  ellipse(pbx+10, pby-40, 10, 10);
  // to avoid using the arc function
  stroke(255);
  rect(pbx-15, pby-50, 30, 10);
  // workaround complete
  stroke(0);
  line(pbx-15, pby-40, pbx-5, pby-40);
  line(pbx+5, pby-40, pbx+15, pby-40);

  // hands
  ellipse(pbx-25, pby+5, 10, 10);
  ellipse(pbx+25, pby+5, 10, 10);

  //body
  ellipse(pbx, pby-10, 20, 20);
  ellipse(pbx, pby+10, 20, 20);
  rect(pbx-10, pby-10, 20, 20);
  // arc workaround again
  stroke(255);
  rect(pbx-9, pby-10, 18, 20);

  //optional arms
  stroke(255);
  line(pbx-10, pby-10, pbx-25, pby+5);
  line(pbx+25, pby+5, pbx+10, pby-10);
  pbx=mouseX;
  pby=mouseY;
}

