int scene = 0;
PImage apple;
PImage bowl;
PImage tea;
PImage letter;
PImage can;
PImage water;
PImage diaper;
PImage ceramic;
PImage lightbulb;
PImage[] images;
PFont TitleFont;
PFont BodyFont;

void setup () {
//scene = 0;
size(800, 600);

TitleFont = loadFont("HannotateSC-W7-48.vlw");
BodyFont = loadFont("HannotateSC-W7-15.vlw");
textFont(TitleFont);

background(110, 202, 227);
//sets background color to blue
images = new PImage[9];
images[0] = loadImage("apple.png");
images[1] = loadImage("bowl.png");
images[2] = loadImage("tea-bag.png");
images[3] = loadImage("letter.png");
images[4] = loadImage("can.png");
images[5] = loadImage("water.png");
images[6] = loadImage("diaper.png");
images[7] = loadImage("ceramic.png");
images[8] = loadImage("lightbulb.png");

}

void draw () {
background(110, 202, 227);
//sets background color to blue
//println(scene);


if (scene == 0) {
landingPage (); 
} 

else if (scene == 1) {
Info_Page ();
}

else if (scene == 2) {
Info_Page2 ();
}

else if (scene == 3) {
Compost_Game ();

}
//image(apple, 100,100, 30, 30);  
}
