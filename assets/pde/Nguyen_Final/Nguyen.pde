class Nguyen implements Creature {
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

  int offsetLeft = 75;
  int offsetRight = 95;
  int offsetUp = 90;
  int offsetDown = 55;
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
  int moveStep = 0;
  int numSteps = ceil(random(150));
  boolean moveForward = true;
  boolean moveUp = true;
  long stoplightMark = 0;
  long stoplightWait = 100;
  int stoplightStep = 0;
  int numStoplightSteps = 30;
  float speed = 1;

  Nguyen(float tempX, float tempY, float tempLargeEyeSize, float tempSmallEyeSize, int tempNumHonks, int tempBodyBrightness, color tempHeadColor, color tempNeckColor, color tempBeakColor, color tempUpperTailColor, color tempLowerTailColor) {
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
  }

  void display() {
    drawCreature();
  }

  void move() {
    if (moveStep >= numSteps) {
      moveStep = 0;
      numSteps = ceil(random(150));
      moveForward = random(2) < 1 ? true : false;
      moveUp = random(2) < 1 ? true : false;
    } else {
      moveStep++;
    }
    if (moveForward) {
      x += speed;
    } else {
      x -= speed;
    }
    if (moveUp) {
      y -= speed;
    } else {
      y += speed;
    }
    if (x - offsetLeft < 0 || x + offsetRight > width) {
      moveForward = !moveForward;
      x = x >= width-offsetRight ? width-offsetRight: offsetLeft;
    }
    if (y - offsetUp < 0 || y + offsetDown > height) {
      moveUp = !moveUp;
      y = y >= height-offsetDown ? height-offsetDown: offsetUp;
    }
  }

  void drawCreature() {
    pushMatrix();
    if (!moveForward) {
      translate(2*x, 0);
      scale(-1, 1);
    }
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
    popMatrix();
    honk();
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
    gooseHonkingStart = random(30) < 1 ? true: false;
    if (millis() - stoplightMark > stoplightWait) {
      if (stoplightStep <= numStoplightSteps) {
        stoplightStep++;
      } else {
        stoplightStep = 0;
      }
      stoplightMark = millis();
    }
    if (stoplightStep < 15) {
      honkColor = color(255, 0, 0);
      speed = random(4, 6);
    } else if (stoplightStep < 25) {
      honkColor = color(0, 255, 0);
      speed = random(2, 4);
    } else {
      honkColor = color(0, 0, 255);
      speed = random(2);
    }
    if (gooseHonkingStart) {
      for (int i = 0; i < numHonks; i++) {
        honkX[i] = random(x-50, x+50);
        honkY[i] = random(y-50, y+50);
      }
      gooseHonkingStart = false;
      gooseHonking = true;
    }
    if (gooseHonking) {
      wait--;
      if (wait > 0) {
        for (int j = 0; j < numHonks; j++) {
          pushMatrix();
          fill(honkColor, 150);
          translate(honkX[j]-50, honkY[j]-40);
          rotate(radians(45));
          textSize(40);
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