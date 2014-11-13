//sqrt(sq(leg1)+sq(leg2))=hyp
void setup(){
  size(400,400);
  noCursor();
  textSize(30);
}
void draw(){
  background(0);
  stroke(255);
  line(0,0,mouseX,0);
  line(mouseX,0,mouseX,mouseY);
  line(mouseX,mouseY,0,0);
  text(pyt(mouseX,mouseY),mouseX,mouseY+30);
}
float pyt(float xlg,float ylg){
  float hyp;
  hyp=sqrt(sq(xlg)+sq(ylg));
  return hyp;
}


