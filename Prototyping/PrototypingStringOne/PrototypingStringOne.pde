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
float stringDivWidth = appWidth*1/2;
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
float fontsize = 28;
PFont titleFont;
String gabriola = "Gabriola";
titleFont = createFont(gabriola, fontsize);
//Tools /Crreat Font / Find Font / Do Not Press "OK", known conflict between loadFont
//
rect( stringDivX, stringDivY, stringDivWidth, stringDivHeight );
//
color blackInk = #000003; //Hexidecimal
fill(blackInk); //Ink, Grey Scale 0-255
textFont(titleFont, fontSize); //see variable note
//textFont() has option to combine font declation with textSize()
//
text( title, stringDivX, stringDivY, stringDivWidth, stringDivHeight );
