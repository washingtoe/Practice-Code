int a=100;
ArrayList<Ball> b= new ArrayList<Ball>();
Hole destroyerofWorlds;
void setup() {
//  for (int i=0; i<b.size; i++) {
    b.add(new Ball(width/2,height/2,20));
//  }
  size(displayWidth, displayHeight);
  noStroke();
  noCursor();
  colorMode(HSB, 360, 100, 100, 100);
}
void draw() {
//  background(0, 0, 0);
  for (int i=0; i<b.size(); i++) {
    Ball p=b.get(i);
    p.move();
    p.bounce();
    p.display();
    destroyerofWorlds.display();
    if(b.size()>200){
      b.remove(0);
    }
    text(frameRate, 10, 20);
  }
}
void mouseClicked(){
  b.add(new Ball(mouseX,mouseY,random(5,50)));
}
