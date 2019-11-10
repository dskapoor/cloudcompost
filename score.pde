class ScoreDisplay { 
  String label; 
  int score; 
  //String join(label, score);
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
}
