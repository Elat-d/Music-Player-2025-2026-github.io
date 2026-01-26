/*Text
 -TBA
 */
//
void drawText() {
  textdraw();
  songTitle();
  //
} // End Draw Text
//
void easyTextQuitButton() {
  //
  text("X", quitDivX+quitDivWidth*1/2, quitDivY+quitDivHeight*3/5); //adjust fractions until working
} //End Easy Text
//
void textSetup() {
  //println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
  //
  float fontSize = appHeight;
  PFont titleFont;
  String gabriola = "Gabriola";
  titleFont = createFont(gabriola, fontSize);
  //
  float fontSizeGabriola = 80.0;
  float gabriolaAspectRatio = fontSizeGabriola / stringDivHeight;
  fontSize = stringDivHeight*gabriolaAspectRatio;
  //
} //End Text Setup
//
void textdraw() {
  fill(brownInk);
  textAlign (CENTER, CENTER); 
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(titleFont, fontSize);
  //
  float constantDecrease = 0.85;
  int iWhile=0;
  while ( textWidth( playListMetaData[currentSong].title() ) > stringDivWidth ) {
    iWhile++;
    //
    fontSize *= constantDecrease;
    textFont(titleFont, fontSize);
  } //
  //println("Iterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", stringDivWidth-textWidth( playListMetaData[currentSong].title() ), "\tUsing", constantDecrease*100+"%" );
  text( playListMetaData[currentSong].title(), stringDivX, stringDivY, stringDivWidth, stringDivHeight );
  fill(resetInk);
} //End Text Draw

//
void songTitle() {
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  fill(titleInk); //Ink, hexidecimal copied from Color Selector
  text( songTitle, stringDivX, stringDivY, stringDivWidth, stringDivHeight );
  fill(resetInk);
} //End Song Title
//
//End Subprogram Tex
