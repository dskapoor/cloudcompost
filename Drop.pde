class Drop {
  float x, y; 
  float speed;
  PImage p;

  Drop(PImage p) {
    x = random(width);
    y = -20;
    speed = random(1, 3);
    this.p = p;
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
