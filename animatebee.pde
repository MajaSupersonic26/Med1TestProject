int imgH = 40;
int imgW = 40;
int imgH2 = 700;
int imgW2 = 700;
int xmax =720;
int sunPos=1;
int sunY=40;
int sunH=40;
int sunW=40;
int bbPosX=0;
int bbPosY=0;

PImage bee;
PImage beeb;

//setting up canvas and loading images
void setup () {
  size(700, 700);
  frameRate(30);
  bee =loadImage("bee.png");
  beeb =loadImage("beebroke.png");
}

//
void draw () {
  background(#D7F4FA);//background for "deleting" old frames.
  image(bee, mouseX, mouseY, imgH, imgW);//image following the mouse
  stroke(0);
  line(mouseX, mouseY, pmouseX, pmouseY);//a funny line following the mouse

  //sun
  noStroke();
  fill(#FFE205);
  ellipse(sunPos, sunY, sunH, sunW);

  //sun animation
  sunPos+=1;    //changing the x-position of sun by plus-one pr time running the draw();
  if (sunPos==xmax) {//and begins again from x=1 when x becomes 720;
    sunPos=1;
  }

  //when pressing the mouse
  if ( mousePressed == true) {
    background(#ce0018);//different background
    image(beeb, bbPosX, bbPosY, imgH2, imgW2);//different image
  }
}
