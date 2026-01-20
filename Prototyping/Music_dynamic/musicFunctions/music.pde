/* Music Subprogram
*/
//
//Global Variables
Minim minim;
int numberOfSongs = 3; 
int numberOfSoundEffects = 3; 
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //ZERO, Math Property
//


//Music Loading - STRUCTURED Review
  minim = new Minim(this); //Manditory
  String upArrow = "../../../";
  String musicFolder = "Song/"; //Developer Specific
  String soundEffectsFolder = "Sound Effects/"; //Developer Specific
  String normalFolder = "Music/"; //Developer Specific
  
  
  String songName[0] = "By Myself";
  String songName[1] = "In The Morning";
  String songName[2] = "Grey Room";
 
 
  String soundEffect1 = "Daytime Forest Bonfire";
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = upArrow + musicFolder + normalFolder; 
  String soundEffectsDirectory = upArrow + musicFolder + soundEffectsFolder;
  String file = musicDirectory + songName1 + fileExtension_mp3; 
  playList[ currentSong ] = minim.loadFile( file );  
  file = soundEffectsDirectory + soundEffect1 + fileExtension_mp3;
  soundEffects[currentSong] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  //Thrown by commenting out FILE, playList[] or soundEffects[]
  if ( playList[currentSong]==null || soundEffects[currentSong]==null) { //ERROR, play list is NULL
    //See FILE or minim.loadFile
    println("The Play List or Sound Effects did not load properly");
    printArray(playList);
    printArray(soundEffects);
    /*
  println("Music Pathway", musicDirectory);
     println("Full Music File Pathway", file);
     */
  } //End ERROR Check Music and Sound Effect Variables
  //






// End Music Subprogram
