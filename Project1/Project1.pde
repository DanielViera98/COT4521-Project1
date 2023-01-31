void setup(){
  size(640,480);
  background(255);
}

void draw(){

}

PVector intersection(PVector p1, PVector q1, PVector p2, PVector q2, boolean left){
  int maxOfMin = int(max(min(p1.x, q1.x), min(p2.x, q2.x)));
  int minOfMax = int(min(max(p1.x, q1.x), max(p2.x, q2.x)));
  println(p1, q1, p2, q2);
  if (maxOfMin <= minOfMax)
    maxOfMin = int(max(min(p1.y, q1.y), min(p2.y, q2.y)));
    minOfMax = int(min(max(p1.y, q1.y), max(p2.y, q2.y)));
    if (maxOfMin <= minOfMax){
      float tp = (p2.x-p1.x)/abs(p1.x-q1.x);
      float tq = (q2.x-p1.x)/abs(p1.x-q1.x);
      
      //float b1 = (q1.x-p1.x);
      //float b2 = (q2.x-p2.x);
      //float a1 = (q1.y - p1.y);
      //float a2 = (q2.y - p2.y);
      //float c1 = p1.x*q1.y-q1.x*p1.y;
      //float c2 = p2.x*q2.y-q2.x*p1.y;
      //float x = (b1*c2-b2*c1)/(a1*b2-a2*b1);
      //float y = (c1*a2-c2*a1)/(a1*b2-a2*b1);
//      println(x,y);
//      circle(x,y, 10);
      //fill(255,0,0);
      //square(
    }
  return p1;
}
