void mouseClicked() {
  //println("START" + scene);
  if (scene == 0) {
  if (startButton.MouseIsOver() == true) {
    scene = 1;
  } 
  }
  else if (scene == 1) {
   if (nextButton.MouseIsOver() == true) {
    scene = 2;
  }
  }
   //println("END"+ scene);
} 
