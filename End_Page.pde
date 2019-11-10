int a = 100;
int b = 200;
Button playAgain;
Button quit;

void End_Page() {
  stroke(#1C7910);
  fill(#1C7910);
  rect(0, height-40, 800, 40, 0);

  fill(255);
  textSize(50);
  text("Final Score: " + score.score, width/2, height/2);

  playAgain = new Button("Play Again", width/2 - 125, height - 100, 200, 75, 20);
  playAgain.Draw();
  quit = new Button("Quit", width/2 - 125, height - 200, 200, 75, 20);
  quit.Draw();

  image(sun_clouds, width/2-150, 25, 300, 200);

  image(cloud, a, 0, 500, 250);
  image(cloud, b, 0, 500, 250);
  a-=5;
  b+=5;
}
