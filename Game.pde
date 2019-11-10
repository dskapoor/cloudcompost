int binX = 350;
int binY = 500;
int binSpeed = 8;
int radius = 10; 
int x3 = -200;
int x4 = 0;
int x5 = 400;
int x6 = 700;
int x7 = 800;
boolean left, right;
boolean goodCollision;

boolean badCollision;
PImage activeBin;
Type activeType;
ScoreDisplay score = new ScoreDisplay();
ArrayList<Drop> dropss = new ArrayList<Drop>();
ArrayList<TimeoutText> removed = new ArrayList<TimeoutText>();

int gameTime = 30;

void Game() {
  stroke(#1C7910);
  fill(#1C7910);
  rect(0, height-40, 800, 40, 0);
  timer++;
  if (timer % 60 == 0) {
    int r = (int) random(0, 9);
    Drop d;
    if (r >= 0 && r <= 2) {
      d = new Drop(images[r], Type.COMPOST);
    } else if (r >= 3 && r <= 5) {
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



  image(storm_cloud, x3, 10, 200, 140);
  image(storm_cloud, x4, 5, 300, 200);
  image(storm_cloud, x5, 10, 200, 140);
  image(storm_cloud, x6, 10, 300, 200);
  image(storm_cloud, x7, 5, 200, 140);
  x3 += 1;
  x3+=2; 
  x4+=1;
  x5+=2;
  x6+=3;
  x7+=1;

  if (x3 > width) {
    x3 = -100;
  }
  if (x4 > width) {
    x4 = -100;
  }
  if (x5 > width) {
    x5 = -100;
  }
  if (x6 > width) {
    x6 = -100;
  }
  if (x7 > width) {
    x7 = -100;
  }

  textSize(20);
  fill(0);
  text("Time: " + gameTime, 55, 25);
  if (timer % 60 == 0) {
    gameTime -= 1;
  }

  score.display();

  if (gameTime == 0) {
    scene = 4;
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
