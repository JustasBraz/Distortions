PImage img;

int count=10000;

float noise1=0;

int siz=5;
Walker[] myWalker;
void setup() {
  img = loadImage("foto2.tif");
  size(500, 500);
  background(255);
 // img = loadImage("MyPhoto1.png");
  //img = loadImage("nature.jpg");
  //img = loadImage("me.jpg");
  //img = loadImage("flame.jpg");
  image(img, 0, 0, width, height);

  myWalker= new Walker[count];

  for (int i=0; i<count; i++) {
    noise1+=0.01;
    float noise2=map(noise(noise1), 0, 1, 15, 17);//try22
    
    myWalker[i]=new Walker((int)random(10, width-10), (int)random(10, height-10), (int)noise2, (int)random(5, 10));
    
  }

 
}

void draw() {
  //background(255,60);
 // println(frameRate);
  tint(255, 80);
 image(img, 0, 0, width, height);
  //blendMode(BLEND);

  for(int i=0; i<count; i++) {
    myWalker[i].show(myWalker[i].positionX, myWalker[i].positionY, siz);
    myWalker[i].move();
   
  }
  
  if(mousePressed){
  siz++;
 println(siz);
  }
}