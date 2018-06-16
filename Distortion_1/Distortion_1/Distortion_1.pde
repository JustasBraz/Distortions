// Distort Image
PImage myImage;
PImage myPhoto;
float distortion = 14; // amplitude
float speed1 = .005; // affects speed of wave scrolling
float speed2 = 5; // affects wave tightness

float distortion_ = 2; // amplitude
float speed1_ = .002; // affects speed of wave scrolling
float speed2_ = 2; // affects wave tightness
void setup()
{
  size(500, 500, P2D);
  myPhoto = loadImage("MyPhoto1.png");
  myImage = loadImage("nature3.jpg");
}

void draw()
{
  background(50, 50, 50, 50);
  blendMode(ADD);

  for (int i = 0; i < myImage.width; i+=2) {
    copy(myImage, i, 0, 1, height, i, (int) (sin((millis()+i*speed2)*speed1)*distortion), 1, height);
  }

  blendMode(BLEND);
  blendMode(LIGHTEST);
  for (int i = 0; i <  myImage.width/1; i+=1) {
    copy(myPhoto, i, 0, 1, height, i, (int) (cos((millis()+i*speed2_*8)*speed1_)*distortion_*2), 1, height);
  }
}