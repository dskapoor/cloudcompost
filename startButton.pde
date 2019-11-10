class Button {
  String label;
  float x;    // top left corner x position
  float y;    // top left corner y position
  float w;    // width of button
  float h;    // height of button
  int ts;     // text size of button
  
  Button(String labelB, float xpos, float ypos, float widthB, float heightB, int textSize) {
    label = labelB;
    x = xpos;
    y = ypos;
    w = widthB;
    h = heightB;
    ts = textSize;
  }
  
  void Draw() {
    if (MouseIsOver()) {
      fill(176, 227, 185);
    if (mousePressed) {
      //scene+=1;
      scene=1;
    }
      
    } 
    else { fill(218); }
    stroke(141);
    rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    textSize(ts);
    fill(0);
    text(label, x + (w / 2), y + (h / 2));
    
       
    
  }
  
  boolean MouseIsOver() {
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
      return true;
    }
    return false;
  }
}
