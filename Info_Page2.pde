Button nextButton2;

void Info_Page2 () {
  
textFont(TitleFont);
text("What goes where?", 400, 60);

textSize(32);
text("Compost", 150, 150);
image(images[0], 90,275, 50, 50); 
image(images[1], 160,200, 50, 50);
image(images[2], 160,350, 50, 50);
text("Recycle", 400, 150);
text("Landfill", 650, 150);




nextButton2 = new Button("Next", 300, 450, 200, 100, 20);

nextButton2.Draw ();
}
