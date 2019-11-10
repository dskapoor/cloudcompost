int score = 0; 
int binX = 350;
int binY = 500;
int binSpeed = 5;
int radius = 10; 
boolean left, right;
boolean goodCollision;
boolean badCollision;
PImage activeBin;

ArrayList<Drop> dropss = new ArrayList<Drop>();

void Game() {
  timer++;
  if (timer % 100 == 0) {
    Drop d = new Drop(images[(int) random(0, 9)]);
    dropss.add(d);
  }

  for (Drop d : dropss) {
    d.display();
    d.Rain();
  }

  for (int i = 0; i < dropss.size(); i++) {
    if (d.y > height) {
      dropss.remove(i);
    }
  }

  image(activeBin, binX, binY, 100, 100); 

  if (left) {
    if (binX > radius-20) {
      binX = binX - binSpeed;
    }
  }
  if (right) {
    if (binX < width-80) {
      binX = binX + binSpeed;
    }
  }
}


void keyPressed () {
  if (key == CODED) {
    {
      if ( (keyCode == LEFT))
      {
        left = true;
      } else {
        left = false;
      }

      if ( (keyCode == RIGHT))
      {
        right = true;
      } else {
        right = false;
      }
    }
  }
}

void keyReleased () {
  if (key == CODED) {
    {
      if ( (keyCode == LEFT))
      {
        left = false;
      }

      if ( (keyCode == RIGHT))
      {
        right = false;
      }
    }
  }
}

void scoreCounter () {


  //insert code so that when correct collision occurs, score = score + 5
  if ( (goodCollision == true) ) { 
    score = score + 5;
  } else if ( (badCollision == true) ) {    
    score = score - 5;
  }
} 