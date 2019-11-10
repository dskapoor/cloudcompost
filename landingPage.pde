Button startButton; 

void landingPage () {

image(cloud, 90, 275, 50, 50); 
  
textSize(32);
textAlign(CENTER); 
text("Cloudy with a Chance of Cleanup", 400, 80);

startButton = new Button("START", 300, 400, 200, 100, 25);

startButton.Draw ();

  
}
