//Global Variables
int appWidth, appHeight;
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

//
void setup() {
  println("Hewwo Wowld OwO");
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
  //layout DIVISIONs (DIVs)
  //rect(X, Y, Width, Height);
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
  //rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  rect(nextSongButtonX, nextSongButtonY, nextSongButtonWidth, nextSongButtonHeight);
  rect(prevSongButtonX, prevSongButtonY, prevSongButtonWidth, prevSongButtonHeight);
  rect(albumX, albumY, albumWidth, albumHeight);
  rect(homeButtonX, homeButtonY, homeButtonWidth, homeButtonHeight);
  rect(runTimeX, runTimeY, runTimeWidth, runTimeHeight);
  rect(totalAudioTimeX, totalAudioTimeY, totalAudioTimeWidth, totalAudioTimeHeight);
  rect(currentAudioTimeX, currentAudioTimeY, currentAudioTimeWidth, currentAudioTimeHeight);
  rect(volumeSliderX, volumeSliderY, volumeSliderWidth, volumeSliderHeight);
  rect(volumeIconX, volumeIconY, volumeIconWidth, volumeIconHeight);
  rect(volumeSliderIndicatorX, volumeSliderIndicatorY, volumeSliderIndicatorWidth, volumeSliderIndicatorHeight);
  rect(authorNameX, authorNameY, authorNameWidth, authorNameHeight);
  rect(songNameX, songNameY, songNameWidth, songNameHeight);
  rect(settingsX, settingY, settingsWidth, settingsHeight);
  
  /*
  rect(songSliderIndicatorX, songSliderIndicatorY, songSliderIndicatorWidth, songSliderIndicatorHeight);
  rect(exitButtonX, exitButtonY, exitButtonWidth, exitButtonHeight);
  */
} //End setup
//
void draw() {
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End MAIN Program
