float a=1;
float b=6;
float c=4;

void setup(){
  size(200,100);
}
void draw(){
  println(qf(a,b,c));
//  background(0);
//  text(qf1(a,b,c),10,20);
//  text(qf2(a,b,c),10,40);
}
float[] qf(float a, float b, float c){
  float[] x=new float[2];
  x[0]=(-b+(sqrt(sq(b)-4*a*c)))/2*a;
  x[1]=(-b-(sqrt(sq(b)-4*a*c)))/2*a;
  return x; 
}
//float qf2(float a, float b, float c){
//  float negx=(-b-(sqrt(sq(b)-4*a*c)))/2*a;
//  return negx;
//}
