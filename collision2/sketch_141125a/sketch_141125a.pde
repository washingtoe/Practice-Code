float s=10;
float s2=600;
PVector loc[];
PVector vel[];
PVector acc[];
void setup() {
  size(displayWidth, displayHeight);
  for (int i=0; i<count; i++) {
    loc= new PVector(random(s[i],width-s), random(s[i], height-s[i]));
    vel[i]= PVector.random2D;
    vel= new PVector(20, 20);
  }
  //  acc= new PVector(1,2);
  noStroke();
  noCursor();
}
void draw() {
  background(255);
  //  vel.add(acc);
  
  for(int i=0;i<count;i++){
    loc[i].add(vel[i]);
    fill(0);
    for(int j=0;j<count,j++){
      
  if (loc.dist(loc2)<s/2+s2/2) {
    if (loc2.x>loc.x) {
      vel.x=-abs(vel.x);
      vel2.x=abs(vel2.x);
    } else {
      vel.x=abs(vel.x);
      vel2.x=-abs(vel2.x);
    }
    if (loc2.y>loc.y) {
      vel.y=-abs(vel.y);
      vel2.y=abs(vel2.y);
    } else {
      vel.y=abs(vel.y);
      vel2.y=-abs(vel2.y);
    }
  }
  if (loc.x+s/2>width) {
    vel.x*=-1;
  }
  if (loc.x-s/2<0) {
    vel.x*=-1;
  }
  if (loc.y+s/2>height) {
    vel.y*=-1;
  }
  if (loc.y-s/2<0) {
    vel.y*=-1;
  }
  if (loc2.x+s2/2>width) {
    vel2.x*=-1;
  }
  if (loc2.x-s2/2<0) {
    vel2.x*=-1;
  }
  if (loc2.y+s2/2>height) {
    vel2.y*=-1;
  }
  if (loc2.y-s2/2<0) {
    vel2.y*=-1;
  }
  //  vel.limit(10);
  ellipse(loc.x, loc.y, s, s);
  ellipse(loc2.x, loc2.y, s2, s2);
}

