 
- Art 
*/
//
//Display
fullScreen(); //Landscape
//size(600, 600); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight, "\n\t\t\t\t\t\t\t\t\tFullScreen, displayWidth:"+displayWidth, "displayHeight:"+displayHeight, "\n\t\t\t\t\t\t\t\t\tSize\t\t, width:"+width, "height:"+height);
//
//Population
float imageDivX = appWidth*1/5;
float imageDivY = appHeight*1/5;
float imageDivWidth = appWidth*1/5;
float imageDivHeight = appHeight*4/5;
//
//Image Aspect Ratio Vars & Algorithm
//Directory or Pathway, Concatenation
String upArrow = "../../";
String folder = "Image/";
String Art = "Art";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow + folder + Art + fileExtensionJPG;
//println("Art Pathway:", imagePathway1);
//Image Loading & Aspect Ratio
PImage errorImage = loadImage( "Art portrait.png" );
PImage image1 = loadImage( imagePathway1 ); //i.e. pathway mispelled
if ( image1 == null ) {
  println("NullPointerException on Image ... Spelling Mistake with Pathway Concatenation");
  image1 = errorImage;
  exit(); //handled whenever the computer uses this part or Memory
}
//
int imageWidth1 = 1772; 
int imageHeight1 = 1772;
//Aspect Ratio
float image1AspectRatio_GreaterOne = ( imageWidth1 >= imageHeight1 ) ? float(imageWidth1)/float(imageHeight1) : float(imageHeight1)/float(imageWidth1) ;
//
println("Aspect Ratio >1", image1AspectRatio_GreaterOne, "Testing for Decimals, Formuale", imageWidth1/imageHeight1);
//
float imageWidthAdjusted1 = imageDivWidth;
float imageHeightAdjusted1 = ( imageWidth1 >= imageDivWidth ) ? imageWidthAdjusted1 * image1AspectRatio_GreaterOne : imageWidthAdjusted1 / image1AspectRatio_GreaterOne ; //Ternary Operator
//
//
if ( imageHeightAdjusted1 > imageDivHeight ) {
  println("Image doesn't fit, program ended ... Fatal Flaw, must be solved ... Image doesn't show.");
  //exit();
  int indexWhile = 0;
  while ( imageHeightAdjusted1>imageDivHeight ) {
    println("iteration of percent while loop", indexWhile++);
    if ( indexWhile < 10000) {
      //Check Infinite loop
    }else {
      //ERROR: Infinite Loop
      println("ERROR: infinite loop, Image Percent WHILE, value:", indexWhile);
      exit();
      imageHeighttAdjusted1=imageDivHeight; //make WHILE fasle, stops WHILE
    } //End Check Infnite loop
    imageWidthAdjusted1 *= 0.98; // -= 1 
    imageHeightAdjusted1 = imageWidthAdjusted1/image1AspectRatio_GreaterOne;
    println("Inspection of percent decrase:", imageWidthAdjusted1, imageHeightAdjusted1, imageDivHeight);
  } //End WHILE
  //
} //end
//
//DIV
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
//
//image(image1, imageDivX, imageDivY, imageDivWidth, imageDivHeight);
image( image1, imageDivX, imageDivY, imageWidthAdjusted1, imageHeightAdjusted1 );
//
                                                        
