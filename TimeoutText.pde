class TimeoutText {
  float x, y;
  int timer;
  boolean positive;

  TimeoutText(float x, float y, boolean positive) {
    this.x = x;
    this.y = y;
    this.positive = positive;
  }

  void display() {
    if (positive) {
      fill(#08FF37);
      textSize(20);
      text("+100", x, y);
    } else {
      fill(#F70C0C);
      textSize(20);
      text("-50", x, y);
    }
  }
  
  void changeScore() {
    if (positive) {
      score.score += 100;
    } else {
      score.score -= 50;
    }
  }
}
