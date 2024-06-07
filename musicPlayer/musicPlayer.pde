/* documentation
 library: sketch > import lib  >add lib > minim
 support webstie: https://code.compartmental.net/minim/
 - https://code.compartmental.net/minim/audioplayer_method_loop.html
 - loop(0) seems best for sfx
 */
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim; //adds object to access all minim functions
int numberSongs = 3;
int numberSFX = 2;
String[] filePathNameMusic = new String[numberSongs];
String[] filePathNameSfx = new String[numberSFX];
AudioPlayer soundEffecter2;
AudioPlayer[] playList1 = new AudioPlayer [ numberSongs ]; //creates 'playlist' variable holding extesions WAV, AIFF, AU, SND, and MP3 files.
AudioPlayer[] soundEffects = new AudioPlayer [ numberSFX ];
AudioMetaData[] AudioMetaData = new AudioMetaData [ numberSongs ];
int currentSong = numberSongs - numberSongs;
//
int appWidth, appHeight;
int Size;
int skip = 5000; //default pref
//
//
String title="Exit";
String playButton="▷";
//
PFont generalFont, titleFont, playButtonFont;
//
color backgroundColour, foregroundColour, lightlessBackground=0, darklessBackground=255; //greyscale is smaller than color, better for system performance
color White=255, Yellow=#FFFF00, Black=0, ourple=#FF00FF, rouge=#FD0000, blue=#00FFB3; // hexademical, its base 16 thats so cool
//
boolean whiteMode=true, dayMode=false, nightMode=false;//difference(?)
Boolean looping=false;
//prevents .rewind in draw() from getting inappropriately acccessed between .play, .loop(1), .loop()
//
void setup() {
  //concatenation AMD inspecting variabels w character escapes
  println("Width: "+width, "\tHeight: "+height, "\tDisplay Width: "+displayWidth, "\tDisplay Height: "+displayHeight);
  //for NULL: all values are null until size(), otherwise arithmetic errors
  println("example formula: add 1 to the width:", width+1);
  //size(419, 500);
  fullScreen(); //displayWidth, displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  //ladscape is hardcoded because who the hell uses a vertical monitor (i saw one once and it was cursed)
  //println(appWidth, appHeight);
  String displayInstructions = ( appWidth >= appHeight ) ? "we're good ^q^": "WHAT ARE YOU DOING";
  println(displayInstructions);
  //
  minim = new Minim(this); //loadfile from project folder (mp3 file in this case)
  String pathwaySfx = "../audio/sfx/"; //relative path
  String pathwayMusic = "../audio/music/";
  String chicago = "Chicago - Freedom Trail Studio";
  String limousines = "Limousines - TrackTribe";
  String iceCream = "You Scream I Scream We All Scream For Ice Cream - Freedom Trail Studio";
  String alarmClock = "Winding Alarm Clock";
  String fileExtension = ".mp3";
  //String ;
  //println ( pathwaySfx + alarmClock );
  String pathQuitSfx = sketchPath( pathwaySfx + alarmClock + fileExtension ); //absolute path
  filePathNameMusic[currentSong+=1] = pathwayMusic + chicago + fileExtension;
  filePathNameMusic[currentSong+=1] = pathwayMusic + limousines + fileExtension;
  filePathNameMusic[currentSong+=1] = pathwayMusic + iceCream + fileExtension;
  /*
  String pathChicago = sketchPath( pathwayMusic + chicago + fileExtension );
  String pathLimousines = sketchPath( pathwayMusic + limousines + fileExtension );
  String pathIceCream = sketchPath( pathwayMusic + iceCream + fileExtension );
  */
  
  //println ( pathSfx );
  soundEffects[0] = minim.loadFile( pathQuitSfx );
  println (currentSong, filePathNameMusic[currentSong]);
  
  //
  //fonts fron OS
  //String[] fontList = PFont.list(); //to list all fonts on OS
  //printArray(fontList); //display a lists fonts
  Size = 32;
  generalFont = createFont("Yu Gothic UI Light", Size);
  titleFont = createFont("Yu Gothic UI Light", Size);
  playButtonFont = createFont("Yu Gothic UI Light", Size);
  //go to tools > create Font > size field, dont hit 'ok', it will kill you
  //
  //variable pop
  //if (hour() >=9 && hour() <=17) backgroundColour = darklessBackground;
  //if (hour() <9 && hour() >17) backgroundColour = lightlessBackground;
  if (whiteMode==true && hour() >=9 && hour() <=17) {
    backgroundColour = darklessBackground;
    foregroundColour = 0;
  } else {
    backgroundColour = lightlessBackground;
    foregroundColour = Yellow; //*ring ring ring* "yellow?" : if (hour() <9 && hour() >17)
    if (hour() >=9 && hour() <=17) foregroundColour = White;
  }
  //
} //End setup
//
void draw() {
  
  //if (!playList1[currentsong].isPlaying()) println("nothings happening, get going");
  //if (playList1[currentsong].isPlaying && !playList[currentsong].isLooping()) println("play once");
  background(backgroundColour);
  //fill(ourple);
  //if ( mouseX>exitButtonX && mouseX<exitButtonX+exitButtonWidth && mouseY>exitButtonY && mouseY<exitButtonY+exitButtonHeight ) fill(Yellow);
  rect(exitButtonX, exitButtonY, exitButtonWidth, exitButtonHeight);
  fill(rouge);
  if ( mouseX>exitButtonX && mouseX<exitButtonX+exitButtonWidth && mouseY>exitButtonY && mouseY<exitButtonY+exitButtonHeight ) {
    fill(blue);
    rect(exitButtonX+exitButtonWidth*1/7, exitButtonY+exitButtonHeight*1/7, exitButtonWidth*5/7, exitButtonHeight*5/7 );
  } else {
    fill(rouge);
  };
  //
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  fill(blue);
  if ( mouseX>playButtonX && mouseX<playButtonX+playButtonWidth && mouseY>playButtonY && mouseY<playButtonY+playButtonHeight ) {
    fill(ourple);
  } else {
    fill(rouge);
  };
  //fill(foregroundColour);
  textAlign(CENTER, CENTER); //align x and y
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER  | BOTTOM | BASELINE ]
  textFont(titleFont, Size);
  textFont(playButtonFont, Size);
  text(title, exitButtonX, exitButtonY, exitButtonWidth, exitButtonHeight);
  text(playButton, playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  //fill(foregroundColour);
  //println(mouseX, mouseY);
  println ( "Current song, Random Number", currentSong);
  //auto play
  if (playList1.isPlaying()) {
    if (!playList1.isLooping() && looping==true) looping==false; //protects .loop() from .rewing()
  } else if ( looping == false && !playList1.isPlaying() && playList1.length() < 100000 ) {}
} //End draw
//
void keyPressed() { //listener
  //if (key=='' && key==''); | letter button setup
  //if (key==CODED && keyCode==) ; | word button setup
  //local, might be global
  
  //int skip = 1000; //basic preference
  //if (key=='H' || key=='h') skip = 5000; 
  //if (key=='G' || key=='g') skip = 10000; 
  if (key=='G' || key=='g') { 
    if ( skip == 5000 ) {
      skip = int ( playList1.length*0.25);
    } else {
      skip = 5000;
   }
  }
  if (key=='A' && key=='a') currentSong = int (random(numberSongs - numberSongs));
  if (key=='Q' || key=='q') exit();
  soundEffect_1();
  if (key==CODED && keyCode==ESC) exit();
  soundEffect_1();
    //if ( key=='F' || key=='f' ) playList1[0].skip( skip ) ; //skip forward 1 second (1000  millisecs)
    //if ( key=='R' || key=='r' ) playList1[0].skip( -skip ) ; //skip backward 1 second (-1000 millisecs)
    if (key=='L' && key=='l') {
      if (whiteMode == false) {
        whiteMode = true;
      } else {
        whiteMode = false;
      }
   };
   
} //End keyPressed
//
void mousePressed() { //listener 2: electric boogaloo
  if ( mouseX>exitButtonX && mouseX<exitButtonX+exitButtonWidth && mouseY>exitButtonY && mouseY<exitButtonY+exitButtonHeight )
  {
    soundEffect_1();
  }
} //End mousePressed
//

// End MAIN Program
