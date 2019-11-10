Button nextButton;

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
 textSize(17);

  text( "According to Waste Management, 1 in 4 items thrown in a recycling bin AREN'T RECYCLEABLE", 370, 200);  

  textLeading(10);
  text( "The U.S. EPA states that about 24% of our waste is organic material that can be COMPOSTED.", 375, 250); 



  text( "EDUCATING the public on the difference between landfill, recycle, and compost is KEY", 375, 300); 


  nextButton = new Button("NEXT", 300, 450, 200, 100, 25);

  nextButton.Draw ();
}
