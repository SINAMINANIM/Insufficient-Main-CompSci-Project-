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
AudioPlayer soundEffects1; 
AudioPlayer soundEffecter2;
AudioPlayer playList1; //creates 'play list' variable holding extesions WAV, AIFF, AU, SND, and MP3 files.
//
int appWidth, appHeight;
int Size;
//
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float playButtonX, playButtonY, playButtonWidth, playButtonHeight;
float albumX, albumY, albumWidth, albumHeight;
float homeButtonX, homeButtonY, homeButtonWidth, homeButtonHeight;
float settingsX, settingY, settingsWidth, settingsHeight;
float nextSongButtonX, nextSongButtonY, nextSongButtonWidth, nextSongButtonHeight;
float prevSongButtonX, prevSongButtonY, prevSongButtonWidth, prevSongButtonHeight;
float runTimeX, runTimeY, runTimeWidth, runTimeHeight;
float currentAudioTimeX, currentAudioTimeY, currentAudioTimeWidth, currentAudioTimeHeight;
float totalAudioTimeX, totalAudioTimeY, totalAudioTimeWidth, totalAudioTimeHeight;
float volumeSliderX, volumeSliderY, volumeSliderWidth, volumeSliderHeight;
float volumeIconX, volumeIconY, volumeIconWidth, volumeIconHeight;
float songNameX, songNameY, songNameWidth, songNameHeight;
float authorNameX, authorNameY, authorNameWidth, authorNameHeight;
float volumeSliderIndicatorX, volumeSliderIndicatorY, volumeSliderIndicatorWidth, volumeSliderIndicatorHeight;
float exitButtonContainerX, exitButtonContainerY, exitButtonContainerWidth, exitButtonContainerHeight;
float exitButtonX, exitButtonY, exitButtonWidth, exitButtonHeight;
//
String title="Exit";
String playButton="('v')";
//
PFont generalFont, titleFont, playButtonFont;
//
color backgroundColour, foregroundColour, lightlessBackground=0, darklessBackground=255; //greyscale is smaller than color, better for system performance
color White=255, Yellow=#FFFF00, Black=0, ourple=#FF00FF, rouge=#FD0000; // hexademical, its base 16 thats so cool
color blue=#00FFB3;
//
boolean whiteMode=false;
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
  //ladscape is hardcoded because who the hell uses a vertical monitor (i saw one once and it was hmmmmmmmmmm)
  //println(appWidth, appHeight);
  String displayInstructions = ( appWidth >= appHeight ) ? "we're good ^q^": "WHAT ARE YOU DOING";
  println(displayInstructions);
  //
  minim = new Minim(this); //loadfile from project folder (mp3 file in this case)
  String exitSound = "Winding Alarm Clock.mp3";
  String playSound = "Straw Squeak.mp3";
  String pathwaySfx = "../audio/sfx/"; //relative path
  //println ( pathwaySfx + exitSound );
  String path = sketchPath( pathwaySfx + exitSound ); //absolute path
  String path2 = sketchPath( pathwaySfx + playSound );
  //println ( path );
  //playList1 = minim.loadFile( path );
  soundEffects1 = minim.loadFile( path );
  soundEffecter2 = minim.loadFile( path2 );
  //
  //fonts fron op sys
  //String[] fontList = PFont.list(); //to list all fonts on OS
  //printArray(fontList); //lists fonts
  Size = 32;
  generalFont = createFont("Yu Gothic UI Light", Size);
  titleFont = createFont("Yu Gothic UI Light", Size);
  playButtonFont = createFont("Yu Gothic UI Light", Size);
  //go to tools > create Font > size field, dont hit 'ok', it will kill you
  //
  //population VV
  backgroundX = appWidth*0;
  backgroundY = appHeight*0;
  backgroundWidth = appWidth;
  backgroundHeight = appHeight;
  playButtonX = appWidth*4/9;
  playButtonY = appHeight*84/100;
  playButtonWidth = appWidth*1/12;
  playButtonHeight = appHeight*1/9;
  nextSongButtonX = appWidth*97/144;
  nextSongButtonY = appHeight*85/100;
  nextSongButtonWidth = appWidth*1/13;
  nextSongButtonHeight = appHeight*1/11;
  prevSongButtonX = appWidth*9/36;
  prevSongButtonY = appHeight*85/100;
  prevSongButtonWidth = appWidth*1/13;
  prevSongButtonHeight = appHeight*1/11;
  albumX = appWidth*25/100;
  albumY = appHeight*23/100;
  albumWidth = appWidth*1/2;
  albumHeight = appHeight*2/5;
  homeButtonX = appWidth*3/64;
  homeButtonY = appHeight*7/100;
  homeButtonWidth = appWidth*1/16;
  homeButtonHeight = appHeight*1/13;
  settingsX = appWidth*57/64;
  settingY = appHeight*7/100;
  settingsWidth = appWidth*1/16;
  settingsHeight = appHeight*1/13;
  runTimeX = appWidth*1/4;
  runTimeY = appHeight*76/100;
  runTimeWidth = appWidth*1/2;
  runTimeHeight = appHeight*1/128;
  totalAudioTimeX = appWidth*230/320;
  totalAudioTimeY = appHeight*78/100;
  totalAudioTimeWidth = appWidth*4/128;
  totalAudioTimeHeight = appHeight*4/128;
  currentAudioTimeX = appWidth*1/4;
  currentAudioTimeY = appHeight*78/100;
  currentAudioTimeWidth = appWidth*4/128;
  currentAudioTimeHeight = appHeight*4/128;
  volumeSliderX = appWidth*1/3;
  volumeSliderY = appHeight*69/100;
  volumeSliderWidth = appWidth*53/128;
  volumeSliderHeight = appHeight*1/128;
  volumeIconX = appWidth*104/400;
  volumeIconY = appHeight*131/200;
  volumeIconWidth = appWidth*7/128;
  volumeIconHeight = appHeight*10/128;
  authorNameX = appWidth*2/5;
  authorNameY = appHeight*10/100;
  authorNameWidth = appWidth*1/5;
  authorNameHeight = appHeight*3/100;
  songNameX = appWidth*1/3;
  songNameY = appHeight*15/100;
  songNameWidth = appWidth*1/3;
  songNameHeight = appHeight*4/100;
  exitButtonContainerX = appWidth*112/128;
  exitButtonContainerY = appHeight*85/100;
  exitButtonContainerWidth = appWidth*23/240;
  exitButtonContainerHeight = appHeight*14/120;
  exitButtonX = appWidth*57/64;
  exitButtonY = appHeight*87/100;
  exitButtonWidth = appWidth*1/16;
  exitButtonHeight = appHeight*1/13;
  //layout DIVISIONs (DIVs)
  //rect(X, Y, Width, Height);
  //rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
  //rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
  /*
   rect(nextSongButtonX, nextSongButtonY, nextSongButtonWidth, nextSongButtonHeight);
   rect(prevSongButtonX, prevSongButtonY, prevSongButtonWidth, prevSongButtonHeight);
   rect(albumX, albumY, albumWidth, albumHeight);
   rect(homeButtonX, homeButtonY, homeButtonWidth, homeButtonHeight);
   rect(runTimeX, runTimeY, runTimeWidth, runTimeHeight);
   rect(songSliderIndicatorX, songSliderIndicatorY, songSliderIndicatorWidth, songSliderIndicatorHeight);
   rect(totalAudioTimeX, totalAudioTimeY, totalAudioTimeWidth, totalAudioTimeHeight);
   rect(currentAudioTimeX, currentAudioTimeY, currentAudioTimeWidth, currentAudioTimeHeight);
   rect(volumeSliderX, volumeSliderY, volumeSliderWidth, volumeSliderHeight);
   rect(volumeIconX, volumeIconY, volumeIconWidth, volumeIconHeight);
   rect(volumeSliderIndicatorX, volumeSliderIndicatorY, volumeSliderIndicatorWidth, volumeSliderIndicatorHeight);
   rect(authorNameX, authorNameY, authorNameWidth, authorNameHeight);
   rect(songNameX, songNameY, songNameWidth, songNameHeight);
   rect(settingsX, settingY, settingsWidth, settingsHeight);
   rect(exitButtonContainerX, exitButtonContainerY, exitButtonContainerWidth, exitButtonContainerHeight);
   */
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  rect(exitButtonX, exitButtonY, exitButtonWidth, exitButtonHeight);
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
  if (key=='L' && key=='l');
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
