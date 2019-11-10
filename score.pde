class ScoreDisplay { 
  int score = 0;

  ScoreDisplay() {
  }

  void display() {
    fill(218);
    rect(670, 20, 100, 50, 10);
    fill(3, 3, 3);
    textSize(18);
    text("Score = " + score, 720, 45); 
  }
}
