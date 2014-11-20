float s=100;
PVector loc;
PVector vel;
PVector acc;
PVector mouse;
void setup(){
  size(displayWidth,displayHeight);
  loc= new PVector(width/2,height/2);
  vel= new PVector(1,1);
  mouse= new PVector();
//  acc= new PVector(1,2);
  noStroke();
}
void draw(){
  background(255);
  mouse.set(mouseX,mouseY);
//  vel.add(acc);
  loc.add(vel);
  fill(0);
  if(loc.dist(mouse)<s/2){
    if(mouse.x>loc.x){
      vel.x=-abs(vel.x);
    }
    else{
      vel.x=abs(vel.x);
    }
    if(mouse.y>loc.y){
      vel.y=-abs(vel.y);
    }
    else{
      vel.y=abs(vel.y);
    }
  }
  if(loc.x+s/2>width){
    vel.x*=-1;
  }
  if(loc.x-s/2<0){
    vel.x*=-1;
  }
  if(loc.y+s/2>height){
    vel.y*=-1;
  }
  if(loc.y-s/2<0){
    vel.y*=-1;
  }
//  vel.limit(10);
  ellipse(loc.x,loc.y,s,s);
}
