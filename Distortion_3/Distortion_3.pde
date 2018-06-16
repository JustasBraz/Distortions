///import processing.video.*;
//Capture video;
int step;

float r;
float g;
float b;
float noice;
int count1;
int array [];
int yarra ;

int index;
int number;
int x, y;
int transp;
int a;
PImage myImage;
PImage myPhoto;

void setup() {
  size(640, 480);
  background(255);

  strokeWeight(50);

  strokeJoin(MITER);
  array=new int [50000];
  array[0]=(int)random(1, 9);

  x=width/20;
  y=height/2;

  step=50;
  r=111;//222
  g=22;//22
  b=111;//222
  noice=random(0, 1000);

  count1=0;
  index=1;
  transp=200;
  a=35;
  myPhoto = loadImage("MyPhoto.jpg");
  
} 

void draw() { 

  image(myPhoto, 0, 0);//video
  tint(255, 200);
  if (frameCount%18==0) {
    filter(DILATE);
  }
  if (frameCount%19==0) {
    filter(ERODE);
  }

  blendMode(LIGHTEST);

  float increment=1995;
  if (increment>1) {
    pushMatrix();
    translate(-width/2, -height/2);
    popMatrix();
  }

  color c1=color(r, g, b);
  stroke(c1);

  float noice1=noise(noice);
  noice+=increment;
  int numb=(int)map(noice1, 0, 1, 0, 8);

  if (index<array.length) {
    if (numb!=array[index-1]) {

      array[index]=numb;

      index++;
    }
  }

  if (count1!=array.length) {
    count1++;
  } else {
    numb=9;
    //saveFrame("####.png");
    println("finished.");
    exit();
  }

  if ((x>width)||(x<0)) {

    step=(int)random(50, 100);

    strokeWeight(random(20, 50));

    g+=random(-a, a);
    r+=random(-a, a);
    b+=random(-a, a);

    x=width/20;
    x+=25;
  }
  if ((y>height)||(y<0)) {
    step=(int)random(50, 100);

    strokeWeight(random(20, 50));
    g+=random(-a, a);
    r+=random(-a, a);
    b+=random(-a, a);    
    x=width/4;
    y=height/3;
    y+=2*50;
  }

  if (numb==1) {
    numb=number;
    line(x, y, x, y+step);
    y=y+step;
  }
  if (numb==2) {


    line(x, y, x, y-step);
    y=y-step;
  }
  if (numb==3) {

    line(x, y, x+step, y);
    x=x+step;
  }
  if (numb==4) {

    line(x, y, x-step, y);
    x=x-step;
  }
  if (numb==5) {

    line(x, y, x+step, y+step);
    x=x+step;
    y=y+step;
  }
  if (numb==6) {

    line(x, y, x-step, y-step);
    x=x-step;
    y=y-step;
  }
  if (numb==7) {

    line(x, y, x+step, y-step);
    x=x+step;
    y=y-step;
  }
  if (numb==8) {

    line(x, y, x-step, y+step);
    x=x-step;
    y=y+step;
  }
  //  saveFrame("/video3/####.png");
}