int binX = 350;
int binY = 500;
int binSpeed = 5;
int radius = 10; 
int x3 = 0;
int x4 = 300; 
boolean left, right;
boolean goodCollision;

boolean badCollision;
PImage activeBin;
ScoreDisplay score = new ScoreDisplay();
ArrayList<Drop> dropss = new ArrayList<Drop>();



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
  
  score.display();
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
