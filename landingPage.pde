Button startButton; 
int x1 = 90;
int x2 = 350;

void landingPage () { 

  textSize(32);
  textAlign(CENTER); 
  text("Cloudy with a Chance of Cleanup!", 375, 100);

  startButton = new Button("START", 270, 400, 200, 100, 25);

  startButton.Draw ();

  image(cloud, x1, 0, 400, 200);
  image(cloud, x2, 0, 400, 200);
  x1-=3; 
  x2+=3;

  image(images[0], 520, 200, 50, 50); 
  image(images[5], 340, 200, 50, 50);
  image(images[6], 500, 275, 50, 50); 
  image(images[7], 420, 200, 50, 50);
  image(images[8], 200, 275, 50, 50);
  image(images[1], 160, 200, 50, 50);
  image(images[2], 300, 275, 50, 50);
  image(images[3], 250, 200, 50, 50); 
  image(images[4], 400, 275, 50, 50);

  //for (PImage image : images) {
  //  image(image, x
  //}
}
