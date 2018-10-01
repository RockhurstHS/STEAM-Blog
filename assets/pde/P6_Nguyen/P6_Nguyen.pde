//float x = 54; // centered at 90
//float y = height-55; // centered at 116
int numHonks = 5;
float[] honkX = new float[numHonks];
float[] honkY = new float[numHonks];
float bodyBrightness = 101;
float smallEyeSize = 9;
float smallPupilSize = 2;
float largeEyeSize = 13;
float largePupilSize = 4;
int frame = 1;
int numFrames = 16;
float rb = 10;
float rf = -5;
boolean step = false;
boolean reflect = false;
int c = 0;
boolean gooseWaddling = false;
float x = mouseX;
float y = mouseY;
float speed = 7;
float wait = 0;

void setup() {
  size(500, 500);
}

void draw() {
  if (!gooseWaddling) {
    if (x < mouseX) {
      x += speed;
    }
    if (x > mouseX) {
      x -= speed;
    }
    if (y < mouseY) {
      y += speed;
    }
    if (y > mouseY) {
      y -= speed;
    }
    if (x > mouseX - speed/2 && x < mouseX + speed/2) {
      x = mouseX;
    }
    if (y > mouseY - speed/2 && y < mouseY + speed/2) {
      y = mouseY;
    }
  }
  background(66, 77, 88);

  //neck
  fill(48);
  quad(x+34, y-20, x+46, y-65, x+52, y-46, x+42, y-11);

  //head
  noStroke();
  fill(63);
  ellipse(x+56, y-65, 50, 50);

  //eyes
  fill(0);
  ellipse(x+74, y-65, smallEyeSize, smallEyeSize);
  ellipse(x+54, y-66, largeEyeSize, largeEyeSize);
  fill(255);
  ellipse(x+75, y-66, smallPupilSize, smallPupilSize);
  ellipse(x+55, y-67, largePupilSize, largePupilSize);

  //backwing
  colorMode(HSB);
  rectMode(CENTER);
  pushMatrix();
  translate(x+28, y-6);
  rotate(radians(rb));
  fill(23, 142, 91, 200);
  rect(-27, -41, 27, 46, 10, 5, 0, 20);
  fill(23, 100, 101, 150);
  rect(-28, -40, 27, 46, 10, 5, 0, 20);
  noFill();
  for (int k = -37; k < -15; k += 6) {
    for (int l = -59; l < -21; l += 7) {
      stroke(23, 142, 86);
      arc(k, l, 6, 8, 0, PI);
    }
  }
  popMatrix();
  colorMode(RGB);
  noStroke();

  //tailfeathers
  fill(0);
  triangle(x-73, y-0, x-29, y-23, x-35, y+7);
  fill(23, 12, 0);
  triangle(x-74, y-18, x-16, y-32, x-49, y-7);

  //left foot
  noStroke();
  fill(63);
  pushMatrix();
  translate(x-20, y+5);
  rotate(radians(step ? -45:0));
  triangle(-2, 37, 5, 37, 2, 55);
  triangle(2, 28, 4, 37, -13, 51);
  triangle(2, 28, 0, 37, 17, 52);
  popMatrix();

  //right foot
  fill(63);
  pushMatrix();
  translate(x+28, y+5);
  rotate(radians(step ? 0:-45));
  triangle(-2, 37, 5, 37, 2, 55);
  triangle(2, 28, 4, 37, -13, 51);
  triangle(2, 28, 0, 37, 17, 52);
  popMatrix();

  //legs
  fill(31);
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

  //body
  colorMode(HSB);
  fill(23, 100, bodyBrightness);
  ellipse(x+0, y-10, 103, 50);
  colorMode(RGB);

  //frontwing
  colorMode(HSB);
  rectMode(CENTER);
  pushMatrix();
  translate(x+25, y+4);
  rotate(radians(rf));
  fill(23, 142, 91, 200);
  rect(-31, -45, 31, 50, 10, 5, 0, 20);
  fill(23, 100, 101, 150);
  rect(-32, -44, 31, 50, 10, 5, 0, 20);
  noFill();
  for (int k = -43; k < -17; k += 6) {
    for (int l = -66; l < -25; l += 7) {
      stroke(23, 142, 86);
      arc(k, l, 6, 8, 0, PI);
    }
  }
  popMatrix();
  colorMode(RGB);
  noStroke();

  //beak
  fill(200);

  ellipse(x+80, y-50, 30, 13);
  noFill();
  stroke(0);
  arc(x+80, y-49, 27, 2, 0, PI);
  fill(255);
  noStroke();
}
