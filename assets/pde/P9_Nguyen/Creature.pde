class Creature {
  float x;
  float y;
  float smallEyeSize; 
  float largeEyeSize; 
  int numHonks; 
  int bodyBrightness; 
  color neckColor;
  color headColor;
  color upperTailColor;
  color lowerTailColor;
  color beakColor;
  float smallPupilSize; 
  float largePupilSize; 
  color honkColor;

  float[] honkX; 
  float[] honkY; 
  boolean gooseHonking = false; 
  int frame = 1; 
  int numFrames = 16; 
  float rb = 10; 
  float rf = -5; 
  boolean step = false;  
  boolean reflect = false; 
  int c = 0; 
  boolean gooseWaddling = false; 
  float wait = 0; 
  boolean gooseHonkingStart = false; 
  boolean waddleForward = true; 
  boolean rbIncrease = true; 
  boolean rfIncrease = false;

  Creature(float tempX, float tempY, float tempLargeEyeSize, float tempSmallEyeSize, int tempNumHonks, int tempBodyBrightness, color tempHeadColor, color tempNeckColor, color tempBeakColor, color tempUpperTailColor, color tempLowerTailColor, color tempHonkColor) {
    x = tempX;
    y = tempY;
    largeEyeSize = tempLargeEyeSize;
    smallEyeSize = tempSmallEyeSize;
    numHonks = tempNumHonks;
    honkX = new float[numHonks];
    honkY = new float[numHonks];
    smallPupilSize = 2.0*smallEyeSize/9.0; 
    largePupilSize = 4.0*largeEyeSize/9.0;
    bodyBrightness = tempBodyBrightness;
    headColor = tempHeadColor;
    neckColor = tempNeckColor;
    beakColor = tempBeakColor;
    upperTailColor = tempUpperTailColor;
    lowerTailColor = tempLowerTailColor;
    honkColor = tempHonkColor;
  }

  void drawCreature() {
    drawNeck(x, y);
    drawHead(x, y);
    drawEyes(x, y);
    drawBackWing(x, y);
    drawTailFeathers(x, y);
    drawLeftFoot(x, y);
    drawRightFoot(x, y);
    drawLegs(x, y);
    drawBody(x, y);
    drawFrontWing(x, y);
    drawBeak(x, y);
    rotateWings();
  }

  void drawNeck(float x, float y) {
    fill(neckColor);
    quad(x+34, y-20, x+46, y-65, x+52, y-46, x+42, y-11);
  }

  void drawHead(float x, float y) {
    noStroke();
    fill(headColor);
    ellipse(x+56, y-65, 50, 50);
  }

  void drawEyes(float x, float y) {
    fill(0);
    ellipse(x+74, y-65, smallEyeSize, smallEyeSize);
    ellipse(x+54, y-66, largeEyeSize, largeEyeSize);
    fill(255);
    ellipse(x+75, y-66, smallPupilSize, smallPupilSize);
    ellipse(x+55, y-67, largePupilSize, largePupilSize);
  }

  void drawBackWing(float x, float y) {
    colorMode(HSB);
    rectMode(CENTER);
    pushMatrix();
    translate(x+28, y-6);
    rotate(radians(rb));
    fill(23, 142, 91, 150);
    rect(-27, -41, 27, 46, 10, 5, 0, 20);
    fill(23, 100, 101, 100);
    rect(-28, -40, 27, 46, 10, 5, 0, 20);
    noFill();
    for (int k = -37; k < -15; k += 6) {
      for (int l = -59; l < -21; l += 7) {
        stroke(23, 142, random(70, 100));
        arc(k, l, 6, 8, 0, PI);
      }
    }
    popMatrix();
    colorMode(RGB);
    noStroke();
  }

  void drawTailFeathers(float x, float y) {
    fill(lowerTailColor);
    triangle(x-73, y-0, x-29, y-23, x-35, y+7);
    fill(upperTailColor);
    triangle(x-74, y-18, x-16, y-32, x-49, y-7);
  }

  void drawLeftFoot(float x, float y) {
    noStroke();
    fill(headColor);
    pushMatrix();
    translate(x-20, y+5);
    rotate(radians(step ? -45:0));
    triangle(-2, 37, 5, 37, 2, 55);
    triangle(2, 28, 4, 37, -13, 51);
    triangle(2, 28, 0, 37, 17, 52);
    popMatrix();
  }

  void drawRightFoot(float x, float y) {
    fill(headColor);
    pushMatrix();
    translate(x+28, y+5);
    rotate(radians(step ? 0:-45));
    triangle(-2, 37, 5, 37, 2, 55);
    triangle(2, 28, 4, 37, -13, 51);
    triangle(2, 28, 0, 37, 17, 52);
    popMatrix();
  }

  void drawLegs(float x, float y) {
    fill(neckColor);
    rectMode(CORNER);
    pushMatrix();
    translate(x-20, y+5);
    rotate(radians(step ? -45:0));
    rect(0, 0, 3, 31); // left
    popMatrix();
    pushMatrix();
    translate(x+28, y+5);
    rotate(radians(step ? 0:-45));
    rect(0, 0, 3, 31); // right
    popMatrix();
  }

  void drawBody(float x, float y) {
    colorMode(HSB);
    fill(23, 100, bodyBrightness);
    ellipse(x+0, y-10, 103, 50);
    colorMode(RGB);
  }

  void drawFrontWing(float x, float y) {
    colorMode(HSB);
    rectMode(CENTER);
    pushMatrix();
    translate(x+25, y+4);
    rotate(radians(rf));
    fill(23, 142, 91, 150);
    rect(-31, -45, 31, 50, 10, 5, 0, 20);
    fill(23, 100, 101, 100);
    rect(-32, -44, 31, 50, 10, 5, 0, 20);
    noFill();
    for (int k = -43; k < -17; k += 6) {
      for (int l = -66; l < -25; l += 7) {
        stroke(23, 142, random(70, 100));
        arc(k, l, 6, 8, 0, PI);
      }
    }
    popMatrix();
    colorMode(RGB);
    noStroke();
  }

  void drawBeak(float x, float y) {
    fill(beakColor);
    if (gooseHonking) {
      pushMatrix();
      translate(x+70, y-50);
      rotate(radians(15));
      arc(15, 0, 30, 13, 0, PI);
      popMatrix();
      pushMatrix();
      translate(x+70, y-50);
      rotate(radians(-15));
      arc(15, 0, 30, 13, PI, TWO_PI);
      popMatrix();
    } else {
      ellipse(x+80, y-50, 30, 13);
      noFill();
      stroke(0);
      arc(x+80, y-49, 27, 2, 0, PI);
      fill(255);
      noStroke();
    }
  }

  void honk() {
    if (gooseHonkingStart) {
      for (int i = 0; i < numHonks; i++) {
        honkX[i] = random(x-80, x+80);
        honkY[i] = random(y-80, y+80);
      }
      gooseHonkingStart = false;
      gooseHonking = true;
    }
    if (keyPressed == true) {
      if (key == 'h' || key == 'H') {
        gooseHonkingStart = true;
      }
    }
    if (gooseHonking) {
      wait--;
      if (wait > 0) {
        for (int j = 0; j < numHonks; j++) {
          pushMatrix();
          fill(honkColor, 150);
          translate(honkX[j]-85, honkY[j]-80);
          rotate(radians(45));
          textSize(70);
          text("HONK!", 0, 0);
          popMatrix();
          gooseHonkingStart = false;
        }
      } else {
        wait = 30;
        gooseHonking = false;
      }
    }
  }

  void rotateWings() {
    if (c < 5) {
      c++;
    } else {
      step = !step;
      frame = frame < numFrames ? frame += 1: 1;
      c = 0;
      rb = rbIncrease ? rb + 5: rb - 5;
      rf = rfIncrease ? rf + 5: rf - 5;
      rbIncrease = rb > 15 ? false: rbIncrease;
      rfIncrease = rf > 15 ? false: rfIncrease;
      rbIncrease = rb < -15 ? true: rbIncrease;
      rfIncrease = rf < -15 ? true: rfIncrease;
    }
  }
}
