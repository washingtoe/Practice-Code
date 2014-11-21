float s=10;
float s2=600;
PVector loc;
PVector loc2;
PVector vel;
PVector vel2;
PVector acc;
PVector acc2;
void setup(){
  size(displayWidth,displayHeight);
  loc= new PVector(random(s/2,width-s),random(s/2,height-s/2));
  loc2= new PVector(s2,s2);
  vel= new PVector(10,10);
  vel2= new PVector(20,20);
//  acc= new PVector(1,2);
  noStroke();
  noCursor();
}
void draw(){
  background(255);
//  vel.add(acc);
  loc.add(vel);
  loc2.add(vel2);
  fill(0);
  if(loc.dist(loc2)<s/2+s2/2){
    if(loc2.x>loc.x){
      vel.x=-abs(vel.x);
      vel2.x=abs(vel2.x);
    }
    else{
      vel.x=abs(vel.x);
      vel2.x=-abs(vel2.x);
    }
    if(loc2.y>loc.y){
      vel.y=-abs(vel.y);
      vel2.y=abs(vel2.y);
    }
    else{
      vel.y=abs(vel.y);
      vel2.y=-abs(vel2.y);
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
    if(loc2.x+s2/2>width){
    vel2.x*=-1;
  }
  if(loc2.x-s2/2<0){
    vel2.x*=-1;
  }
  if(loc2.y+s2/2>height){
    vel2.y*=-1;
  }
  if(loc2.y-s2/2<0){
    vel2.y*=-1;
  }
//  vel.limit(10);
  ellipse(loc.x,loc.y,s,s);
  ellipse(loc2.x,loc2.y,s2,s2);
}

