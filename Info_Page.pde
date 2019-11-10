void Info_Page () {

PFont TitleFont;
TitleFont = loadFont("HannotateSC-W7-48.vlw");
textFont(TitleFont);
textAlign(CENTER);
text("Background Information", 400, 80);

textLeading(20);

PFont BodyFont;
BodyFont = loadFont("HannotateSC-W7-15.vlw");
textFont(BodyFont);
textAlign(CENTER);

text( "According to Waste Management, 1 in 4 items thrown in a recycling bin ISN'T RECYCLEABLE", 370, 200);  

textLeading(10);
text( "The U.S. EPA states that about 24% of our waste is organic material that can be COMPOSTED.", 375, 300); 
  


text( "Educating the public on the difference between LANDFILL, RECYCLE, and COMPOST is KEY", 375, 400); 


Button startButton = new Button("Next", 300, 450, 200, 100, 20);

startButton.Draw ();
}
