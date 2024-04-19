//ctrl c ctrl v to dynamic program (music player)
//
//Global variables
float titleX, titleY, titleWidth, titleHeight;
float footerX, footerY, footerWidth, footerHeight;
PFont titleFont, footerFont;
String title="ME WHEN THEY";
//String footer="bottom text";
int Size;
color blue=#00FFB3;
//
//display jee-yo-meh-tree, display or-ree-ehn-tay-shun: land-scay-p and pour-trat, sQr
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
footerX = appWidth*1/10;
footerY = appHeight*8/10;
footerWidth = appWidth*8/10;
footerHeight = appHeight*1/10;
//
//single ecks-eh-cyu-ted code: font SETUP
//fonts fron op sys
String[] fontList = PFont.list(); //to list all fonts on OS
printArray(fontList); //lists fonts
Size = 32;
titleFont = createFont("Yu Gothic UI Light", Size);
//footerFont = createFont("Yu Gothic UI Light", Size);
//go to tools > create Font > size field, dont hit 'ok', it will kill you
//
//divs & rect()s | rect(X, Y, Width, Height);
rect(titleX, titleY, titleWidth, titleHeight);
rect(footerX, footerY, footerWidth, footerHeight);
//
//repeted code: draw()ing text
fill(blue); //the INK(ling)
textAlign(CENTER, CENTER); //align x and y
Size = 80;
textFont(titleFont, Size);
//textFont(footerFont, Size);
text(title, titleX, titleY, titleWidth, titleHeight);
//text(footer, footerX, footerY, footerWidth, footerHeight);
