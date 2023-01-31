int numClicks = 0;
IntList coords = new IntList();
int colorInt;
PVector p1, p2, q1, q2; 

//Takes input value and assigns line segment appropriate color.
void colorSwitch(int colorSwitch){
  switch(colorSwitch){
    case 1:
      stroke(255, 0, 0);
      break;  
    case 2:
      stroke(180, 180, 0);
      break;
    case 3:
      stroke(0, 255, 0);
      break;
    case 4:
      stroke(0, 180, 180);
      break;
    case 5:
      stroke(0, 0, 255);
      break;
    default:
      stroke(180, 0, 180);
      break;
    };
}
