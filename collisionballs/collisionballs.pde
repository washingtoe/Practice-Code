float s=100;
PVector loc;
PVector mouse;
void setup(){
  size(displayWidth,displayHeight);
  loc= new PVector(width/2,height/2);
  mouse= new PVector();
  noStroke();
  noCursor();
}
void draw(){
  background(255);
  mouse.set(mouseX,mouseY);
  fill(0);
  if(loc.dist(mouse)<s/2){
    loc.set(random(width),random(height));
  }
  ellipse(loc.x,loc.y,s,s);
}
