class Drop {
  float x, y; 
  float speed;
  PImage p;
  
  Drop(PImage p) {
    x = random(width);
    y = 20;
    speed = random(1,3);
    this.p = p;
  }
    
        void display() {
      image(p, x, y, 50, 50);
    }
    
    void Rain() {
      y += speed;
    }
    

    
    
  // boolean reachedBottom() {
  //  // If we go a little beyond the bottom
  //  if (y > height + *4) { 
  //    return true;
  //  } else {
  //    return false;
  //  }
  //}
}

   ArrayList<Drop> dropss = new ArrayList<Drop>();

 void Rain() {
   timer++;
   if (timer % 100 == 0) {
     Drop d = new Drop(images[(int) random(0,9)]);
     dropss.add(d);
   }
   
   for (Drop d : dropss) {
     d.display();
     d.Rain();
   }
   d.display();
   d.Rain();
 }


//// Example 10-10: The raindrop catching game

//void Rain () {

//class Rain {


//Catcher catcher;    // One catcher object
//Timer timer;        // One timer object
//Drop[] drops;       // An array of drop objects
//int totalDrops = 0; // totalDrops



//void Rain () {
//  size(480, 270);
//  catcher = new Catcher(32); // Create the catcher with a radius of 32
//  drops = new Drop[1000];    // Create 1000 spots in the array
//  timer = new Timer(300);    // Create a timer that goes off every 300 milliseconds
//  timer.start();             // Starting the timer
//}


//  // Set catcher location
//  catcher.setLocation(mouseX, mouseY); 
//  // Display the catcher
//  catcher.display(); 

//  // Check the timer
//  if (timer.isFinished()) {
//    // Deal with raindrops
//    // Initialize one drop
//    drops[totalDrops] = new Drop();
//    // Increment totalDrops
//    totalDrops ++ ;
//    // If we hit the end of the array
//    if (totalDrops >= drops.length) {
//      totalDrops = 0; // Start over
//    }
//    timer.start();
//  }

//  // Move and display all drops
//  for (int i = 0; i < totalDrops; i++ ) {
//    drops[i].move();
//    drops[i].display();
//    if (catcher.intersect(drops[i])) {
//      drops[i].caught();
//    }
//  }



//}
