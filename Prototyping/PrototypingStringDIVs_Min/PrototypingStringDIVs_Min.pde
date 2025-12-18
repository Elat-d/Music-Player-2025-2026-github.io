//Display
fullScreen(); 
//size(500, 100); 
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//
//Population
int numberOfDIVs = 10;
float[] stringDivX = new float[numberOfDIVs];
float[] stringDivY = new float[numberOfDIVs];
float[] stringDivWidth = new float[numberOfDIVs];
float[] stringDivHeight = new float[numberOfDIVs];
stringDivX[0] = appWidth*0.5/16; //**Akward DIV
stringDivY[0] = appHeight*0.8;
stringDivWidth[0] = appWidth*7.1/16;
stringDivHeight[0] = appHeight*0.6/8; // ** Make smaller to test height
stringDivX[1] = appWidth*7.8/16; //Cascading VARs
stringDivY[1] = appHeight*0.4/8;
stringDivWidth[1] = appWidth*3.6/16;
stringDivHeight[1] = appHeight*0.6/8; //Cascading VARs
stringDivX[2] = appWidth*7.8/16; //Cascading VARs, best practice
stringDivY[2] = appHeight*1.3/8;
stringDivWidth[2] = appWidth*1.5/16;
stringDivHeight[2] = appHeight*0.4/8; //Cascading VARs, best practice
stringDivX[3] = appWidth*9.8/16;
stringDivY[3] = appHeight*1.3/8;
stringDivWidth[3]= appWidth*1.5/16;
stringDivHeight[3] =appHeight*0.4/8;
stringDivX[4] = appWidth*11.8/16;
stringDivY[4] = appHeight*1.3/8;
stringDivWidth[4]= appWidth*1.5/16;
stringDivHeight[4] =appHeight*0.4/8;
stringDivX[5] = appWidth*13.8/16;
stringDivY[5] = appHeight*1.3/8;
stringDivWidth[5]= appWidth*1.5/16;
stringDivHeight[5] =appHeight*0.4/8;
stringDivX[6] = appWidth*8.8/16;
stringDivY[6] = appHeight*4.9/8;
stringDivWidth[6]= appWidth*3.5/16;
stringDivHeight[6] =appHeight*0.6/8;
stringDivX[7] = appWidth*8.8/16;
stringDivY[7] = appHeight*5.9/8;
stringDivWidth[7]= appWidth*3.5/16;
stringDivHeight[7] =appHeight*0.6/8;
stringDivX[8] = appWidth*8.8/16;
stringDivY[8] = appHeight*6.9/8;
stringDivWidth[8]= appWidth*3.5/16;
stringDivHeight[8] =appHeight*0.6/8;
stringDivX[9] = appWidth*0.5/16;
stringDivY[9] = appHeight*4.2/8;
stringDivWidth[9]= appWidth*4.5/16;
stringDivHeight[9] =appHeight*0.5/8;
//Strings, Text, Literal
String[] text = new String[numberOfDIVs]; //CAUTION: Data intentionally makes STRINGS=numberOfDIVs, one-to-one counting
text[0] = "Search";
text[1] = "Music Category";
text[2] = "RnB";
text[3] = "HipHop";
text[4] = "Pop";
text[5] = "Classic";
text[6] = "track name";
text[7] = "track name";
text[8] = "track name";
text[9] = "artist name";
//
//Font Loading & Aspect Ratio
float fontSize = appHeight;
PFont titleFont;
String gabriola = "Gabriola";
titleFont = createFont(gabriola, fontSize);
float fontSizeGabriola = 70.0;
float divHeightGabriola = stringDivHeight[0];
float gabriolaAspectRatio = fontSizeGabriola / divHeightGabriola;
fontSize = stringDivHeight[0]*gabriolaAspectRatio; 
//
for ( int i=0; i<numberOfDIVs; i++ ) {
  rect( stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
} //End FOR DIVs
//
//Drawing Text
color blueInk = #1D0EAA; 
color whiteInk = #FFFFFF; //Grey Scale is 255
color resetInk = whiteInk;
fill(blueInk);
textAlign (CENTER, CENTER);
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
textFont(titleFont, fontSize); 
float constantDecrease = 0.99;  
int iWhile=0; 
for ( int i=0; i<3; i++ ) {
  while ( textWidth( text[i] ) > stringDivWidth[i] ) {
    iWhile++;
    //ERROR: infinite loop, requires exit() & println()
    fontSize *= constantDecrease; 
    textFont(titleFont, fontSize); 
  } //End WHILE Error Check Text-wrap
} //End FOR Loop, Font Size Check in DIVs
//
for ( int i=0; i<numberOfDIVs; i++ ) {
  text( text[i], stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
}
fill(resetInk);
//
//End Program
