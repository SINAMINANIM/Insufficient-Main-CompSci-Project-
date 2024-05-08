//perish.
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage backgroundImage;
void setup() {
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth*1;
  backgroundImageHeight = appHeight*1;
  //
  String boys = "the boys";
  String backgroundImageName = boys;
  String imageExtension = ".jpg";
  String pathway = "../../image holder folder/";
  String path = pathway + backgroundImageName + imageExtension;
  //
  backgroundImage = loadImage(path);
  //
  rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  //
} //end setup()
void draw() {
  image(backgroundImage, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
} //end draw()
