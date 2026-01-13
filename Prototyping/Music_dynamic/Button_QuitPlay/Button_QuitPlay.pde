/* Creating Buttons
 - Understanding how the mixing of boilerplate happens
 - Introducing Booleans to communicate between procedures, 1 bite of information
 
 - Specific Debugging Topics
 - MouseX & Y keyVariables
 
 - What to copy and paste
 - Quit & Play DIV
 
 */
//
//Library - Minim
//
//Global Variables
int appWidth, appHeight;
float quitDivX, quitDivY, quitDivWidth, quitDivHeight;
float playDivX, playDivY, playDivWidth, playDivHeight;
float playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3;
//
Boolean playButton=false;
//
color resetBackground, resetInk;
color playColourBackground, playColourSymbol, playColourBackgroundActivated, playColourSymbolActivated;
color quitBackground, quitBackgroundActivated;
//
void setup() {
  //Display
  size(500, 400);
  //fullScreen();
  appWidth = width;
  appHeight = height;
  //
  //Population
  quitDivX = appWidth * 9/10;
  quitDivY = appHeight * 0/10;
  quitDivWidth = appWidth * 1/10;
  quitDivHeight = appHeight * 1/10;
  playDivX = appWidth * 4/10;
  playDivY = appHeight * 4.5/10;
  playDivWidth = appWidth * 2/10;
  playDivHeight = appHeight * 1/10;
  playSymbolX1 = playDivX + playDivWidth * 1/4;
  playSymbolY1 = playDivY + playDivHeight * 1/4;
  playSymbolX2 = playSymbolX1 + playDivWidth * 1/2;
  playSymbolY2 = playDivY + playDivHeight * 1/2;
  playSymbolX3 = playSymbolX1;
  playSymbolY3 = playDivY + playDivHeight * 3/4;
  //DIVs
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
  rect(playDivX, playDivY, playDivWidth, playDivHeight);
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
  //
  //Colour Population
  color black = 0; //Gray Scale, much smaller color, 256 bits
  color white = 255; //Gray Scale
  //CANVAS: default background and ink
  resetBackground = white;
  resetInk = black;
  //Button Colours
  color brown = #2E0F14;
  color blue = #5FB3E5;
  color black =#050303;
  color grayScale= 256/2;
  color gray =#5F5A5B;
  playColourBackground = brown;
  playColourSymbol = blue;
  playColourBackgroundActivated = blue;
  playColourSymbolActivated = brown;
  quitBackground = white;
  quitBackgroundActivated = red;
    //
} //End setup
//
void draw() {
  //println ("My Mouse is", mouseX, mouseY);
  //Button HoverOver
  if ( mouseX>playDivX && mouseX<playDivX+playDivWidth && mouseY>playDivY && mouseY<playDivY+playDivHeight ) {
    println("i like minions");
    playButton = true;
    fill(playColourBackgroundActivated);
    rect(playDivX, playDivY, playDivWidth, playDivHeight);
    fill(playColourSymbolActivated);
    triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
    fill(resetBackground);
  } else {
    print(" ");
    playButton = false;
    fill(playColourBackground);
    rect(playDivX, playDivY, playDivWidth, playDivHeight);
    fill(playColourSymbol);
    triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
    fill(resetBackground);
  }//End Play Button Hover Over
  if ( mouseX>quitDivX && mouseX<quitDivX+quitDivWidth && mouseY>quitDivY &&mouseY<quitDivY+quitDivHeight ) {
    fill(quitBackgroundActivated);
    rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
    fill(resetBackground);
  } else {
    fill(quitBackground);
    rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
    fill(resetBackground);
  }//End Quit Button Hover Over
  //
} //End draw
//
void mousePressed() {
  //Music Play Functions
  if ( playButton == true ) {
    println("Play My Song");
    playButton=false; //reset Boolean for draw()
  } else {
    println(" ");
  }
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program
