void mouseClicked() {
  //println("START" + scene);
  if (scene == 0) {
    if (startButton.MouseIsOver() == true) {
      scene = 1;
    }
  } else if (scene == 1) {
    if (nextButton.MouseIsOver() == true) {
      scene = 2;
    }
  }
  //println("END"+ scene);

  else if (scene == 2) {
    if (compostButton.MouseIsOver() == true) {
      activeBin = bins[0];
      activeType = Type.COMPOST;
      scene = 3;
    }
    if (recyclingButton.MouseIsOver() == true) {
      activeBin = bins[1];
      activeType = Type.RECYCLE;
      scene = 3;
    }
    if (trashButton.MouseIsOver() == true) {
      activeBin = bins[2];
      activeType = Type.TRASH;
      scene = 3;
    }
  }
} 
