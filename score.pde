class ScoreDisplay { 
  String label; 
  int score; 
  float x;
  float y; 
  float w;
  float h; 
  int ts;

  ScoreDisplay(String labelSD, float xposSD, float yposSD, float widthSD, float heightSD, int textSizeSD) {
    label = labelSD;
    x = xposSD;
    y = yposSD;
    w = widthSD;
    h = heightSD;
    ts = textSizeSD;
  }

  void display() {
    text("Score = " +score, 750, 750);
  }
}
