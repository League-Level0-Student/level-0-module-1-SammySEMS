PImage farmyard;

int laneWidth;

boolean gameOver = false;


// Set the numberOfTurkeys variable to how many turkeys will race (2-8)
int numberOfTurkeys = 5;

// Declare a Turkey variable for each of the turkeys who will race. 
// For example:     Turkey gobbler;
Turkey chicken;
Turkey Yay;
Turkey person;
Turkey gobbler;
Turkey thanks;

void setup() {
  // This sets the size of the text used for the lane labels.
  textSize(20);
  
 // Set the size of the race course (make the width bigger for a longer race).
 size(1000, 500);
 
 // Load a picture into the farmyard to be used as the race background (grass.jpg has been provided for you),
 
farmyard = loadImage("grass.jpg");
 // Resize the farmyard so it will fill the sketch
 
farmyard.resize(width, height);
 // Set the width of each racing lane in the laneWidth variable. All turkeys use the same lane width.
 // (NOTE: you need to know how many turkeys are racing to calculate this) 

laneWidth = height /numberOfTurkeys;
 // Create the turkeys here. You will need to create a new turkey for each race participant.
 // Example:     gobbler = new Turkey(0, y-value);
 // NOTE: Each turkey will need a unique y value to place it in a different racing lane
 chicken= new Turkey (0,0);
 Yay= new Turkey (0, laneWidth);
 person = new Turkey (0, 2*laneWidth);
 gobbler = new Turkey (0, 3*laneWidth);
 thanks = new Turkey (0, 4*laneWidth);
     
}


void draw() {
  
 if (!gameOver) {
    // Draw the background (farmyard)
    background(farmyard);
   
    drawLaneMarkers();   // This method draws the lines between each racing lane
    drawTurkeys();       // This method draws each turkey
    moveTurkeys();       // This method moves the turkeys during the race 
    checkForWinner();    // This method checks to see if any of the turkeys have crossed the finishing line

    // See if you can figure out how to change the speed of the turkeys by changing the Turkey class. 
    
    // Option: Draw the turkeys so they fill the racing lanes (fewer turkeys mean bigger size)

 }


// This code only runs when the game is over
// You do not have to change this code unless you want to
 if (gameOver) {
   fill(0);
   textSize(50);
     text ("RACE OVER", width/2, height/2);
 }
}

void drawTurkeys() {
  
    //  Put code in here to tell each turkey to draw itself
    chicken.draw();
 Yay.draw();
 person.draw();
 gobbler.draw();
 thanks.draw();
}
void moveTurkeys() {
  
    //  Put code in here to tell each turkey to move itself
    chicken.move();
    Yay.move();
    person.move();
    gobbler.move();
   thanks.move();
   
}

void checkForWinner() {
  
    //  Put code in here to check each turkey's x location to see if it crossed the finish line
    //  If a turkey has crossed the line, set     gameOver = true; 
    //  Also write the text "WINNER" in the winning turkey's race lane, so you can see who won.
    //  NOTE: There might be a tie!
 if(chicken.x>=width){
   gameOver = true;
   text("Winner is chicken!",0, chicken.y+laneWidth/2);
 }
  if(Yay.x>=width){
   gameOver = true;
   text("Winner is Yay!",0, Yay.y+laneWidth/2);
 }
  if(person.x>=width){
   gameOver = true;
   text("Winner is person!",0, person.y+laneWidth/2);
 }
  if(gobbler.x>=width){
   gameOver = true;
   text("Winner is gobbler!",0, gobbler.y+laneWidth/2);
 }
  if(thanks.x>=width){
   gameOver = true;
   text("Winner is thanks!",0, thanks.y+laneWidth/2);
 }
} 
void drawLaneMarkers() {
     // The following code draws the lanes and lane numbers
     // You do not have to change this code unless you want to
    fill(0);
    for (int i=1; i<=numberOfTurkeys; i++ ) {
       rect(0,laneWidth*i,width,2);
       textSize(30);
       text(""+i, width-50, laneWidth*i - 30);
  } 
}  
  
