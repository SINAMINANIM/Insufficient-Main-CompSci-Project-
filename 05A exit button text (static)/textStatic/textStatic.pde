
//
//Global variables
float titleX, titleY, titleWidth, titleHeight;
PFont titleFont;
String title="wht're you, a COP?";
//
//display jee-yo-meh-tree, display ore-ee-ehn-tay-shun: land-scay-p and pour-trat, sQr
fullScreen();
//
//con-cat-eh-nay-shun and in-speck-shun of vair-ree-ah-bulls
println("Display Monitor", "width: "+displayWidth, "\theight: "+displayHeight);
int appHeight = displayHeight;
int appWidth = displayWidth;
//
//paw-pew-lay-shun
titleX = appWidth*1/10;
titleY = appHeight*1/10;
titleWidth = appWidth*8/10;
titleHeight = appHeight*1/10;
//
//single ecks-eh-cyu-ted code: font SETUP
//fonts fron op sys
String[] fontList = PFont.list(); //to list all fonts on OS
printArray(fontList); //lists fonts
titleFont = createFont("Yu Gothic UI Light", 32);
//go to tools > create Font > size field, dont hit 'ok', known error
//
//divs & rect()s | rect(X, Y, Width, Height);
rect(titleX, titleY, titleWidth, titleHeight);
//rect(X, Y, Width, Height); //footer
//
//repeted code: draw()ing text
textFont(titleFont, 20);
text(title, titleX, titleY, titleWidth, titleHeight);
