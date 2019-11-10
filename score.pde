class ScoreDisplay { 
  int score = 0;

  ScoreDisplay() {
  }

  void display() {
    fill(176, 227, 185);
    rect(625, 20, 150, 60, 10);
    fill(3, 3, 3);
    textSize(18);
    text("SCORE = " + score, 700, 50); 
  }
}
