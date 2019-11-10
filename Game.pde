int binX = 350;
int binY = 500;
int binSpeed = 8;
int radius = 10; 
int x3 = 0;
int x4 = 300; 
boolean left, right;
boolean goodCollision;

boolean badCollision;
PImage activeBin;
Type activeType;
ScoreDisplay score = new ScoreDisplay();
ArrayList<Drop> dropss = new ArrayList<Drop>();
ArrayList<TimeoutText> removed = new ArrayList<TimeoutText>();



void Game() {
  image(storm_cloud, x3, 120, 100, 100);
  image(storm_cloud, x4, 100, 200, 200);
  image(storm_cloud, x3, 110, 300, 300);
  image(storm_cloud, x4, 80, 110, 110);
  image(storm_cloud, x3, 100, 300, 300);
  x3+=.6; 
  x4+=.4;

  if ((x3 > width)) { 
    x3 = 0;
  }

  if ((x4 > width)) { 
    x4 = 10;
  }

  timer++;
  if (timer % 100 == 0) {
    int r = (int) random(0, 9);
    Drop d;
    if (r >= 0 && r <= 2) {
      d = new Drop(images[r], Type.COMPOST);
    } else if (r >= 3 && r <= 6) {
      d = new Drop(images[r], Type.RECYCLE);
    } else {
      d = new Drop(images[r], Type.TRASH);
    }
    dropss.add(d);
  }

  for (Drop d : dropss) {
    d.display();
    d.Rain();
  }

  for (int i = 0; i < dropss.size(); i++) {
    if (dropss.get(i).y > height) {
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

  score.display();

  for (int i = 0; i < dropss.size(); i++) {
    if (dropss.get(i).y > (binY - 50) && dropss.get(i).y < (binY + 0) && dropss.get(i).x > (binX - 20) && dropss.get(i).x < (binX + 60)) {
      Drop d = dropss.remove(i);
      TimeoutText t = new TimeoutText(d.x, d.y, activeType == d.type);
      t.changeScore();
      removed.add(t);
    }
  }

  for (int i = 0; i < removed.size(); i++) {
    removed.get(i).timer++;
    removed.get(i).display();
    if (removed.get(i).timer > 60) {
      removed.remove(i);
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


  //  //insert code so that when correct collision occurs, score = score + 5
  //  if ( (goodCollision == true) ) { 
  //    score = score + 5;
  //  } else if ( (badCollision == true) ) {    
  //    score = score - 5;
  //  }
} 
