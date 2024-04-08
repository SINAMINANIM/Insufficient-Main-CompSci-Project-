//Global Variables
int appWidth, appHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float playButtonX, playButtonY, playButtonWidth, playButtonHeight;
//
void setup() {
  println("HewwoWowld");
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
  //populatoe
  backgroundX = appWidth*0;
  backgroundY = appHeight*0;
  backgroundWidth = appWidth; 
  backgroundHeight = appHeight;
  playButtonX = appWidth*4/9;
  playButtonY = appHeight*8/9;
  playButtonWidth = appWidth*1/13;
  playButtonHeight = appHeight*2/10;
  //layout DIVISIONs (DIVs)
  //rect(X, Y, Width, Height);
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
  rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  
  /*
  rect(nextSongButtonX, nextSongButtonY, nextSongButtonWidth, nextSongButtonHeight);
  rect(prevSongButtonX, prevSongButtonY, prevSongButtonWidth, prevSongButtonHeight);
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  rect(runTimerX, runTimerY, runTimerWidth, runTimerHeight);
  rect(buttonHolderX, buttonHolderY, buttonHolderWidth, buttonHolderHeight);
  rect(currentAudioTimeX, currentAudioTimeY, currentAudioTimeWidth, currentAudioTimeHeight);
  rect(totalAudioTimeX, totalAudioTimeY, totalAudioTimeWidth, totalAudioTimeHeight);
  rect(songNameX, songNameY, songNameWidth, songNameHeight);
  rect(authorNameX, authorNameY, authorNameWidth, authorNameHeight);
  rect(sidebarX, sidebarY, sidebarWidth, sidebarHeight);
  rect(playlistOneX, playlistOneY, playlistOneWidth, playlistOneHeight);
  rect(playlistTwoX, playlistTwoY, playlistTwoWidth, playlistTwoHeight);
  rect(playlistThreeX, playlistThreeY, playlistThreeWidth, playlistThreeHeight);
  rect(playlistFourX, playlistFourY, playlistFourWidth, playlistFourHeight);
  rect(homeButtonX, homeButtonY, homeButtonWidth, homeButtonHeight);
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
