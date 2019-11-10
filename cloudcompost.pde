int scene = 0;
PImage apple;
PImage bowl;
PImage coffee;
PImage letter;
PImage can;
PImage water;
PImage diaper;
PImage ceramic;
PImage lightbulb;

PFont TitleFont;
PFont BodyFont;


void setup () {
size(800, 600);

TitleFont = loadFont("HannotateSC-W7-48.vlw");
BodyFont = loadFont("HannotateSC-W7-15.vlw");
textFont(TitleFont);

 
background(110, 202, 227);
//sets background color to blue
PImage[] images = new PImage[9];
images[0] = loadImage("apple.png");
images[1] = loadImage("bowl.png");
images[2] = loadImage("coffee_filter.jpeg");
images[3] = loadImage("letter.png");
images[4] = loadImage("can.png");
images[5] = loadImage("water.png");
images[6] = loadImage("diper.png");
images[7] = loadImage("ceramic.png");
images[8] = loadImage("lightbulb.png");

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
//image(apple, 100,100, 30, 30);  
}
