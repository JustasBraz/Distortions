class Walker {
  int positionX; 
  int positionY; 
  int size; 
  int step;

  Walker(int positionX_, int positionY_, int size_, int step_) {
    // super(position1, position2, size, step);
    this.positionX= positionX_;
    this.positionY= positionY_;
    this.size=size_;
    this.step=step_;
    stroke(255);
    strokeWeight(0.5);
    noFill();
    noStroke();
    // Rectangle shows area being copied
    rect(positionX+step, positionY+step, size, size);
  }

  void record() {
   // println(frameCount);
    if (frameCount>25 && frameCount<170) {
      saveFrame("App/APP###.jpg");
    }
  }

  void update() {
   // println(positionX+" "+step);
  }

  //default method to show mini-rectangle walkers
  void show(int posX, int posY, int sizzle) {
    copy(positionX, positionY, size, size, posX, posY, sizzle, sizzle);
    rect(positionX, positionY, sizzle, sizzle);
  }
  //overladed method to show mini-rectangle walkers with specific color, tint and strokeWeight combination
  void show(int posX, int posY, int sizzle, int colour, int tint, float weight) {
    copy(positionX, positionY, size, size, posX, posY, sizzle, sizzle);
    stroke(colour, tint);
    strokeWeight(weight);
    rect(positionX, positionY, sizzle, sizzle);
  }


  void move() {

    //throwing dice to decide what next random position will be chosen
    int x =(int)random(1, 9);

    switch(x) {
    case 1:
      positionY+=step;
      break;
    case 2:
      positionY-=step;
      break;
    case 3:
      positionX+=step;
      break;
    case 4:
      positionX-=step;
      break;

    case 5:
      positionX-=step;
      positionY-=step;
      break;
    case 6:
      positionX+=step;
      positionY-=step;
      break;
    case 7:
      positionX-=step;
      positionY+=step;
      break;
    case 8:
      positionX+=step;
      positionY+=step;
      break;
    default: 
      println("error");
      break;
    }

    //prevents from going off-screen and
    //returns to the center of the scrren
    if (positionX<0) {
      positionX=width/2;
    }
    if (positionY<0) {
      positionY=height/2;
    }
    if (positionX>width) {
      positionX=width/2;
    }
    if (positionY>height) {

      positionY=height/2;
    }
    rect(positionX, positionY, size, size);
  }
}