// Distort Image
PImage myImage;
float distortion = 10; // amplitude
float speed1 = .01; // affects speed of wave scrolling
float speed2 = 8; // affects wave tightness
//random(low, high);
PFont f; 
void setup()
{

  f = createFont("Arial", 16, true);
  frameRate(35);
  size(500, 500, P2D);
  myImage = loadImage("MyPhoto.jpg");
}
void draw()
{
  distort();
  record();
}
void distort() {

  image(myImage, 0, 0);

  rect(0, 0, 600, 600);

  fill(random(250, 255));  //225                       
  int x=(int)random(240, 250); //was250
  int y =(int)random(80, 85);//was100

  rect(0, 0, 500, 500);
  textAlign(CENTER);
  textFont(f, (int)random(28, 32));  //24    
  fill(0);

  if  (second()>=0&&second()<2) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (sin((millis()+i*speed2)*speed1)*distortion*10), 1, height);
    }
    //text("Drink The En Tiff",x,y);
  }

  if  (second()>=2&&second()<4) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (cos((millis()+i*speed1)*speed2)*distortion/5), 1, (int)random(300, 600));
    }
    //text("Drink Fifteenth",x,y);
  }

  if  (second()>=4&&second()<6) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (tan((millis()+i*random(10, 110))*random(10, 110))*random(10, 110)), 1, height);//good
    }
    //text("Drink Theft Fen I",x,y);
  }

  if  (second()>=6&&second()<8) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (sin((millis()+i*random(7, 15))*speed1)*distortion*300), 1, height);
    }
    //text("Kind Fret The Fin",x,y);
  }

  if  (second()>=8&&second()<10) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (tan((millis()+i*random(7, 8))*speed1)*distortion), 1, height);
    }
    //text("Kind Feet Fir Nth",x,y);
  }

  if  (second()>=10&&second()<12) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (sin((millis()+i*random(5, 12))*speed1)*random(5, 120)), 1, height);//
    }
    //text("Kid Theft Fern In",x,y);
  }

  if  (second()>=12&&second()<14) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (tan((millis()+i*random(5, 12))*speed1)*random(5, 120)), 1, height);//
    }
    //text("Kid Teen Riff Nth",x,y);
  }


  if  (second()>=14&&second()<16) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (cos((millis()+i*random(0, 5))*random(.01, 0.03))*random(5, 120)), 1, height);//
    }
    //text("Id Heft Rent Fink",x,y);
  }

  if  (second()>=16&&second()<18) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (cos((millis()+i*random(3, 5))*random(.01, 0.02))*random(5, 7)), 1, (int)random(400, 500));
    }
    //text("Hid Fret Kent Fin",x,y);
  }

  if  (second()>=18&&second()<20) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (sin((millis()+i*speed2)*speed1)*distortion*10), 1, height);
    }
    //text("Drift Then Ken If",x,y);
  }

  if  (second()>=20&&second()<22) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (cos((millis()+i*random(5, 12))*random(.01, 0.015))*random(6, 8)), 1, (int)random(450, 500));//
    }
    //text("Find Theft En Irk",x,y);
  }

  if  (second()>=22&&second()<24) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (cos((millis()+i*speed1)*speed1)*distortion-random(-15, 15)), 1, (int)random(400, 1500));
    }
    //text("Find Feet Nth Irk",x,y);
  }

  if  (second()>=24&&second()<26) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (cos((millis()+i*speed1)*speed1)*distortion-random(-15, 15)), 1, (int)random(400, 500));
    }
    //text("Red Ken Fifth Nit",x,y);
  }

  if  (second()>=26&&second()<28) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (cos((millis()+i*speed1)*speed1)*distortion-random(-1, 1)), 1, (int)random(400, 500));//
    }
    //text("Tend Eh Riff Knit",x,y);
  }

  if  (second()>=28&&second()<30) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (sin((millis()+i*speed2)*speed1)*distortion), 1, height);
    }
    //text("Trend Heft If Kin",x,y);
  }

  if  (second()>=30&&second()<32) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (tan((millis()+i*random(10))*random(999999, 100000))*20-(int)(random(-2, 2))), 1, height);
    }
    //text("Dent Eh Riff Knit",x,y);
  }

  if  (second()>=32&&second()<34) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (cos((millis()+i*speed2)*random(5, 10))*distortion*3), 1, height);
    }
    //text("Nerd Kent Fifth I",x,y);
  }

  if  (second()>=34&&second()<36) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (tan((millis()+i*random(10000, 999999))*random(999999, 100000))*20-(int)(random(-2, 2))), 1, height);
    }
    //text("Den Ten Fifth Irk",x,y);
  }

  if  (second()>=36&&second()<38) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (cos((millis()+i*random(10000, 999999))*random(999999, 100000))*20-(int)(random(-2, 2))), 1, height);
    }
    //text("End Re Tiff Think",x,y);
  }

  if  (second()>=38&&second()<40) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (tan((millis()+i*random(0, 100))*random(1000, 100000))*distortion), 1, height);
    }
    //text("Diet Ken Riff Nth",x,y);
  }

  if  (second()>=40&&second()<42) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (sin((millis()+i*speed2)*speed1)*distortion*5), 1, height);
    }
    //text("End The Riff Knit",x,y);
  }
  if  (second()>=42&&second()<44) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (cos((millis()+i*speed1)*speed2)*distortion/5), 1, (int)random(300, 600));
    }
    //text("Nerd Theft If Ink",x,y);
  }
  if  (second()>=44&&second()<46) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (tan((millis()+i*random(10, 110))*random(10, 110))*random(10, 110)), 1, height);//good
    }
    //text("Irked En Tiff Nth",x,y);
  }

  if  (second()>=46&&second()<48) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (sin((millis()+i*random(7, 15))*speed1)*distortion*300), 1, height);
    }
    //text("Herd Kent Fin Fit",x,y);
  }

  if  (second()>=48&&second()<50) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (tan((millis()+i*random(7, 8))*speed1)*distortion*2), 1, height);
    }//text("Deft Then Fir Kin",x,y);
  }

  if  (second()>=50&&second()<52) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (sin((millis()+i*random(5, 12))*speed1)*random(5, 120)), 1, height);//
    }
    //text("Fired Ken Fit Nth",x,y);
  }

  if  (second()>=52&&second()<54) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (tan((millis()+i*random(5, 12))*speed1)*random(5, 120)), 1, height);//
    }
    //text("Knifed Fret Nth I",x,y);
  }

  if  (second()>=54&&second()<56) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (cos((millis()+i*random(0, 5))*random(.01, 0.03))*random(5, 120)), 1, height);//
    }
    //text("Fed Net Firth Kin",x,y);
  }

  if  (second()>=56&&second()<58) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (cos((millis()+i*random(3, 5))*random(.01, 0.02))*random(5, 7)), 1, (int)random(400, 500));
    }
    //text("Treed If Fink Nth",x,y);
  }

  if  (second()>=58&&second()<60) {
    for (int i = 0; i <myImage.height; ++i) {
      copy(myImage, i, 0, 1, height, i, (int) (sin((millis()+i*speed2)*speed1)*distortion), 1, height);
    }
    //text("Feed Rift Nth Ink",x,y);
  }
}
void record() {
  if (frameCount>25 && frameCount<170) {
    saveFrame("App/APP###.jpg");
  }
}

/*
void draw()
 {
 background(0);
 image(myImage,0,0);
 for (int i = 0; i <myImage.height ; ++i) {
 copy(myImage, i,0,1,height, i, (int) (sin((millis()+i*speed2)*speed1)*distortion),1,height);
 // copy(myImage, i,0,1,height, i, (int) (cos((millis()+i*speed2)*speed1)*distortion),1,height);
 }
 }*/