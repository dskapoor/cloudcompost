int binX = 350;
int binY = 500;
int binSpeed = 5;
int radius = 10; 
int x3 = 70;
int x4 = 200;
int x5 = 400;
int x6 = 500;
int x7 = 600;
boolean left, right;
boolean goodCollision;

boolean badCollision;
PImage activeBin;
ScoreDisplay score = new ScoreDisplay();
ArrayList<Drop> dropss = new ArrayList<Drop>();



void Game() {

  image(storm_cloud, x3, 20, 200, 140);
  image(storm_cloud, x4, 20, 300, 200);
  image(storm_cloud, x5, 10, 200, 140);
  image(storm_cloud, x6, 30, 300, 200);
  image(storm_cloud, x7, 10, 200, 140);
  x3+=1.01; 
  x4+=1.04;
  x5+=1.05;
  x6+=1.02;
  x7+=1.01;
 
 //for int x 
 //if ((x3 > width)) { 
 //    x3 = 0; 
 //   }
  
  //  if ((x4 > width)) { 
  //  x4 = 10; 
  //}
 
  

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
