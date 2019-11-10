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
image(images[3], 410,275, 50, 50); 
image(images[4], 340,200, 50, 50);
image(images[5], 340,350, 50, 50);
text("Landfill", 650, 150);
image(images[6], 590,275, 50, 50); 
image(images[7], 660,200, 50, 50);
image(images[8], 660,350, 50, 50);




nextButton2 = new Button("NEXT", 300, 450, 200, 100, 25);

nextButton2.Draw ();
}
