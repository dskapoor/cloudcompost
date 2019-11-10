enum Type {
  COMPOST, RECYCLE, TRASH;
}

class Drop {
  float x, y; 
  float speed;
  PImage p;
  int time;
  Type type;

  Drop(PImage p, Type t) {
    x = random(width);
    y = -20;
    speed = random(2, 4);
    this.p = p;
    type = t;
  }

  void display() {
    image(p, x, y, 50, 50);
  }

  void Rain() {
    y += speed;
  }

  // boolean reachedBottom() {
  //  // If we go a little beyond the bottom
  //  if (y > height + *4) { 
  //    return true;
  //  } else {
  //    return false;
  //  }
  //}
}
