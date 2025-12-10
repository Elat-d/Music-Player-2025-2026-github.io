/* String
*/
//
//Display
fullScreen(); //Landscape
//size(500, 100); //Portrait, testing smaller DIVs ONLY
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\theight:\t\t"+height);
//
//Population
float stringDivX = appWidth*1/4; 
float stringDivY = appHeight*1/10;
float stringDivWidth = appWidth*0.5/2;
float stringDivHeight = appHeight*1/10; // ** Make smaller to test height
//
//Strings, Text, Literal
String title = "banana";
 // Students enter all text from Case Study
 
 
 /*Font from OS
println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
//Fonts from OS
String[] fontList = PFont.list(); //To list all fonts available on system
 printArray(fontList); //For listing all possible fonts to choose, then createFont
 */
//
float fontsize = appHeight;
PFont titleFont;
String gabriola = "Gabriola";
titleFont = createFont(gabriola, fontsize);
//Tools /Crreat Font / Find Font / Do Not Press "OK", known conflict between loadFont
//
println(fontsize, gabriola, titleFont);
println("fontsize:", fontsize);
//
float gabriolaAspectRatio = fontsize / stringDivHeight;
fontsize = stringDivHeight*gabriolaAspectRatio;
println("Gabriola Aspect Ratio:", gabriolaAspectRatio);
println(); 
rect( stringDivX, stringDivY, stringDivWidth, stringDivHeight );
fontsize= 81;
//
color redInk = #861313; //Hexidecimal
color whiteInk = #FFFFFF;
color resetInk = whiteInk;
fill(redInk); //Ink, Grey Scale 0-255
textAlign (CENTER, CENTER);
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
//
textFont(titleFont, fontsize); //see variable note
float constantDecrease = 0.99;
while ( textWidth(title) > stringDivWidth ) {
 //ERROR: infinite loop, reuires exit() & println()
 fontsize *= constantDecrease;// Assignmaen Operator // fontsize = fontsize*0.99
  textFont(titleFont, fontsize); //see variable note
}
//textFont() has option to combine font declation with textSize()
//
text( title, stringDivX, stringDivY, stringDivWidth, stringDivHeight );
fill(resetInk);
