Button startButton; 
int x1 = 90;
int x2 = 350;

void landingPage () { 

  textSize(32);
  textAlign(CENTER); 
  text("Cloudy with a Chance of Cleanup", 400, 100);

  startButton = new Button("START", 300, 400, 200, 100, 25);

  startButton.Draw ();

  image(cloud, x1, 0, 400, 200);
  image(cloud, x2, 0, 400, 200);
  x1-=2; 
  x2+=2;

  //for (PImage image : images) {
  //  image(image, x
  //}
}
