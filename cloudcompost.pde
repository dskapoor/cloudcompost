int scene = 0;


void setup () {

size(800, 600);

PFont TitleFont;
TitleFont = loadFont("HannotateSC-W7-48.vlw");
textFont(TitleFont);

 
}


void draw () {
background(110, 202, 227);
//sets background color to blue

if (scene == 0) {
landingPage (); 
} 
else if (scene ==1) {
Info_Page ();
}
  
}
