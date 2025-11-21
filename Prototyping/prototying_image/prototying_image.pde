/*Aspect ratio:People Only Demonstrain
-old man
*/
//
//Display
fullScreen(); //landscape
//size(600, 600); //portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight, "\n\t\t\t\tFullScreendisplayWidth:"+displayWidth, "displayHeight:"+displayHeight, "width:"+width, "height:"+ height);
//
//Population
float imageDivX = appWidth*1/4;
float imageDivY = appHeight*1/10;
float imageDivWidth = appWidth*1/2;
float imageDivHeight = appHeight*4/5;
//
//image Aspect Ratio Vars & Algorithm
//Directory or Pathway, Concatenation
String upArrow ="../../";
String folder = "Image"; 
String people = "people";
String fileExtensionJPG=".jpg";
String imagePathway1 = upArrow + folder + people + fileExtensionJPG;
//println("People Pathway:", imagePathway1);
//Image Loading & Aspect Ratio
PImage image1 = loadImage(imagePathway1);
int imageWidth1 = 1600;
int imageHeight1 = 1600; 
//Aspect Ratio
//
//
//DIV
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
//
image(image1 , imageDivX, imageDivY, imageDivWidth, imageDivHeight); 
