/*void mouseClicked(){
  //add mouse coordinates and a color signifier to list coords
  numClicks++;
  coords.append(mouseX); coords.append(mouseY);
  if (numClicks > 1){
    int size = coords.size();
    if (numClicks < 8){
      colorInt++;
      colorSwitch(colorInt%6);
      line(coords.get(size-4), coords.get(size-3), coords.get(size-2), coords.get(size-1));
    }
    else{
      if (numClicks == 8) colorInt++;
      background(255);
      for (int i = 0; i < 2; i++)
        coords.remove(0);
      colorInt -= 5;
      for (int i = 0; i <= coords.size()-4; i += 2, colorInt++){
        colorSwitch(colorInt%6);
        line(coords.get(i), coords.get(i+1), coords.get(i+2), coords.get(i+3));
      }
    }
    //refresh background, redraw lines.
    /*
    p2 = new PVector(coords.get(size-4),coords.get(size-3));
    q2 = new PVector(coords.get(size-2),coords.get(size-1));
    for (int j = 4; j <= size; j += 2){
      //Send first coordinates color signifier to colorSwitch for each line
      colorSwitch(coords.get(j-4));
      line(coords.get(j-6), coords.get(j-5), coords.get(j-3), coords.get(j-2));
      p1 = new PVector(coords.get(j-6), coords.get(j-5));
      q1 = new PVector(coords.get(j-3),coords.get(j-2));
      boolean left = false;
      if (j < size-3)
        intersection(p1, q1, p2, q2, left);
    }
    
  }
}*/
void mouseClicked(){
  //add mouse coordinates and a color signifier to list coords
  numClicks++;
  coords.append(mouseX); coords.append(mouseY); coords.append(numClicks%6);
  if (numClicks > 1){
    //If the number of lines exceeds 6, remove the first set of coordinates and color signifier
    if (numClicks > 7)
      for (int i = 0; i < 3; i++)
        coords.remove(0);
    //refresh background, redraw lines.
    background(255);
    int size = coords.size();
    p2 = new PVector(coords.get(size-6),coords.get(size-5));
    q2 = new PVector(coords.get(size-3),coords.get(size-2));
    for (int j = 6; j <= size; j += 3){
      //Send first coordinates color signifier to colorSwitch for each line
      colorSwitch(coords.get(j-4));
      line(coords.get(j-6), coords.get(j-5), coords.get(j-3), coords.get(j-2));
      p1 = new PVector(coords.get(j-6), coords.get(j-5));
      q1 = new PVector(coords.get(j-3),coords.get(j-2));
      boolean left = false;
//      if (j < size-3)
//        intersection(p1, q1, p2, q2, left);
    }    
    
  }
}
