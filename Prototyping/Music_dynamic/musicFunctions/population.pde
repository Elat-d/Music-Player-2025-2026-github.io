/* Population
 - TBA
 */
//
float stringDivX, stringDivY, stringDivWidth, stringDivHeight;
color resetBlackink, resetWhiteInk,  brownInk;
//
void divPopulation() {
  quitDivX = appWidth * 0/16;
  quitDivY = appHeight * 0/8;
  quitDivWidth = appWidth * 0.4/16;
  quitDivHeight = appHeight * 0.5/8;
  playDivX = appWidth * 3.15/16;
  playDivY = appHeight * 5.7/8;
  playDivWidth = appWidth * 0.7/16;
  playDivHeight = appHeight * 0.7/8;
  playSymbolX1 = playDivX + playDivWidth * 1/4;
  playSymbolY1 = playDivY + playDivHeight * 1/4;
  playSymbolX2 = playSymbolX1 + playDivWidth * 1/2;
  playSymbolY2 = playDivY + playDivHeight * 1/2;
  playSymbolX3 = playSymbolX1;
  playSymbolY3 = playDivY + playDivHeight * 3/4;
  // 
} //End DIV Population
//
void colourPopulation() {
  color black = 0; //Gray Scales
  color white = 255; 
  color grayScale = 256/2; 
  color gray = #B9B9B9;
  //CANVAS: default background and ink
  resetBackgroundDay = white;
  resetInkDay = black;
  resetBackgroundNight = 256/4;
  resetInkNight = int(256*0.75); // 3/4 of origoinal, not 1/4
  //println("Casting answer is:", resetInkNight); //Exactly 192, no rounding invovled, checked on calculator
  //
  color brown = #2E0F14;
  color blue = #5FB3E5;
  color navy = #120783;
  color darkGray = grayScale;
  color ligthGray = gray;
  //
  if ( nightMode == true ) {
    resetBackground = resetBackgroundNight;
    resetInk = resetInkNight;
    playColourBackground = darkGray;
    playColourSymbol = ligthGray;
    playColourBackgroundActivated = ligthGray;
    playColourSymbolActivated = darkGray;
    quitBackground = ligthGray;
    quitBackgroundActivated = navy;
    quitButtonInk = darkGray;
  } else
  {
    //
    resetBackground = resetBackgroundDay;
    resetInk = black;
    playColourBackground = brown;
    playColourSymbol = blue;
    playColourBackgroundActivated = blue;
    playColourSymbolActivated = brown;
    quitBackground = white;
    quitBackgroundActivated = navy;
    quitButtonInk = black;
  } //End Night Mode Colors
} //End Colour Population
//
// End Subprogram Population
