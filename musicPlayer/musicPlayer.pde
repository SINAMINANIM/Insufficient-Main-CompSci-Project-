/* documentation
library: sketch > import lib  >add lib > minim
support webstie: https://code.compartmental.net/minim/
 - https://code.compartmental.net/minim/audioplayer_method_loop.html
 - loop(0) seems best for sfx
*/
import ddf.minim.*;
//[DEPRECATED] WHY ARE YOU FUCKING BROKEN ^^^^^^^^^^^^^^^^^^^^^^^^^^^ RAAAAAAAAAAAAAAAAAHGHGHGHGHHGH [DEPRECATED]
//^ found why it broke. rogue text. i am going to scream
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim; //adds object to access all minim functions
AudioPlayer soundEffects1; 
AudioPlayer soundEffecter2;
AudioPlayer playList; //creates 'play list' variable holding extesions WAV, AIFF, AU, SND, and MP3 files.
//
int appWidth, appHeight;
int Size;
//
//
String title="Exit";
String playButton="('v')";
//
PFont generalFont, titleFont, playButtonFont;
//
color backgroundColour, foregroundColour, lightlessBackground=0, darklessBackground=255; //greyscale is smaller than color, better for system performance
color White=255, Yellow=#FFFF00, Black=0, ourple=#FF00FF, rouge=#FD0000, blue=#00FFB3; // hexademical, its base 16 thats so cool
//
boolean whiteMode=false;
boolean dayMode=false; //THEY ARE DIFFERENT!!!!!!!!!!!!!
//
//
void setup() {
  //concatenation AMD inspecting variabels w character escapes
  println("Width: "+width, "\tHeight: "+height, "\tDisplay Width: "+displayWidth, "\tDisplay Height: "+displayHeight);
  //for NULL: all values are null until size(), otherwise arithmetic errors
  println("example formula: add 1 to the width:", width+1);
  //size(419, 500); //WIDTH, HEIHT
  fullScreen(); //displayWidth, displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  //ladscape is hardcoded because who the hell uses a vertical monitor (i saw one once and it was very odd)
  //println(appWidth, appHeight);
  String displayInstructions = ( appWidth >= appHeight ) ? "we're good ^q^": "WHAT ARE YOU DOING";
  println(displayInstructions);
  //
  minim = new Minim(this); //loadfile from project folder (mp3 file in this case)
  String exitSound = "Winding Alarm Clock.mp3";
  String playSound = "Straw Squeak.mp3";
  String pathwaySfx = "../audio/sfx/"; //relative path
  //String ;
  //String ;
  //println ( pathwaySfx + exitSound );
  String path = sketchPath( pathwaySfx + exitSound ); //absolute path
  String path2 = sketchPath( pathwaySfx + playSound );
  //println ( path );
  //playList = minim.loadFile( path );
  soundEffects1 = minim.loadFile( path );
  soundEffecter2 = minim.loadFile( path2 );
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
  }
  //
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  fill(blue);
  if ( mouseX>playButtonX && mouseX<playButtonX+playButtonWidth && mouseY>playButtonY && mouseY<playButtonY+playButtonHeight ) {
    fill(ourple);
  } else {
  fill(rouge);
  }
  //fill(foregroundColour);
textAlign(CENTER, CENTER); //align x and y
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER  | BOTTOM | BASELINE ]
textFont(titleFont, Size);
textFont(playButtonFont, Size);
text(title, exitButtonX, exitButtonY, exitButtonWidth, exitButtonHeight);
text(playButton, playButtonX, playButtonY, playButtonWidth, playButtonHeight);
//fill(foregroundColour);
  //println(mouseX, mouseY);
} //End draw
//
void keyPressed() { //listener
//if (key=='' && key==''); | letter button setup
//if (key==CODED && keyCode==) ; | word button setup
  if (key=='Q' || key=='q') exit();
    soundEffect_1();
  if (key==CODED && keyCode==ESC) exit();
    soundEffect_1();
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
