int score = 0; 
int binX = 350;
int binY = 500;
int binSpeed;
int radius; 
boolean left, right;

void Compost_Game () {
image(bins[0], binX, binY, 120, 120); 
binSpeed = 5;
radius = 10;
//binX = 350;
//binY = 500;
if (left) {
    binX = binX - binSpeed;
}
if (right) {
    binX = binX + binSpeed;


}
  
}

void keyPressed () {
if (key == CODED) {
{if ( (keyCode == LEFT) && (binX > radius+5) )
  {
  left = true;
  } else {
   left = false; 
  }

  if ( (keyCode == RIGHT) && (binX < width-95) )
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
{if ( (keyCode == LEFT) && (binX > radius) )
  {
  left = false;
  }

  if ( (keyCode == RIGHT) && (binX < width) )
  {
    right = false;
  }
}
}
}
