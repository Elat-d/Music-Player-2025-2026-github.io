/* Population
 - TBA
 */
//
float stringDivX, stringDivY, stringDivWidth, stringDivHeight;
color resetBlackink, resetWhiteInk,  brownInk;
//
void divPopulation() {
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
