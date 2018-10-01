float bodyBrightness = 101;
float smallEyeSize = 9;
float smallPupilSize = 2;
float largeEyeSize = 13;
float largePupilSize = 4;
boolean gooseHonking = false;
int frame = 1;
int numFrames = 16;
float rb = 10;
float rf = -5;
boolean step = false;
boolean reflect = false;

void setup() {
  size(500, 500);
}

void draw() {
  background(66, 77, 88);

  //neck
  fill(48);
  quad(mouseX+34, mouseY-20, mouseX+46, mouseY-65, mouseX+52, mouseY-46, mouseX+42, mouseY-11);

  //head
  noStroke();
  fill(63);
  ellipse(mouseX+56, mouseY-65, 50, 50);

  //emouseYes
  fill(0);
  ellipse(mouseX+74, mouseY-65, smallEyeSize, smallEyeSize);
  ellipse(mouseX+54, mouseY-66, largeEyeSize, largeEyeSize);
  fill(255);
  ellipse(mouseX+75, mouseY-66, smallPupilSize, smallPupilSize);
  ellipse(mouseX+55, mouseY-67, largePupilSize, largePupilSize);

  //backwing
  colorMode(HSB);
  rectMode(CENTER);
  pushMatrix();
  translate(mouseX+28, mouseY-6);
  rotate(radians(rb));
  fill(23, 142, 91, 200);
  rect(-27, -41, 27, 46, 10, 5, 0, 20);
  fill(23, 100, 101, 150);
  rect(-28, -40, 27, 46, 10, 5, 0, 20);
  popMatrix();
  colorMode(RGB);

  //tailfeathers
  fill(0);
  triangle(mouseX-73, mouseY-0, mouseX-29, mouseY-23, mouseX-35, mouseY+7);
  fill(23, 12, 0);
  triangle(mouseX-74, mouseY-18, mouseX-16, mouseY-32, mouseX-49, mouseY-7);

  //left foot
  noStroke();
  fill(63);
  pushMatrix();
  translate(mouseX-20, mouseY+5);
  rotate(radians(step ? -45:0));
  triangle(-2, 37, 5, 37, 2, 55);
  triangle(2, 28, 4, 37, -13, 51);
  triangle(2, 28, 0, 37, 17, 52);
  popMatrix();

  //right foot
  fill(63);
  pushMatrix();
  translate(mouseX+28, mouseY+5);
  rotate(radians(step ? 0:-45));
  triangle(-2, 37, 5, 37, 2, 55);
  triangle(2, 28, 4, 37, -13, 51);
  triangle(2, 28, 0, 37, 17, 52);
  popMatrix();

  //legs
  fill(31);
  rectMode(CORNER);
  pushMatrix();
  translate(mouseX-20, mouseY+5);
  rotate(radians(step ? -45:0));
  rect(0, 0, 3, 31); // left
  popMatrix();
  pushMatrix();
  translate(mouseX+28, mouseY+5);
  rotate(radians(step ? 0:-45));
  rect(0, 0, 3, 31); // right
  popMatrix();

  //bodmouseY
  colorMode(HSB);
  fill(23, 100, bodyBrightness);
  ellipse(mouseX+0, mouseY-10, 103, 50);
  colorMode(RGB);

  //frontwing
  colorMode(HSB);
  rectMode(CENTER);
  pushMatrix();
  translate(mouseX+25, mouseY+4);
  rotate(radians(rf));
  fill(23, 142, 91, 200);
  rect(-31, -45, 31, 50, 10, 5, 0, 20);
  fill(23, 100, 101, 150);
  rect(-32, -44, 31, 50, 10, 5, 0, 20);
  popMatrix();
  colorMode(RGB);

  //beak
  fill(200);

  pushMatrix();
  translate(mouseX+70, mouseY-50);
  rotate(radians(15));
  arc(15, 0, 30, 13, 0, PI);
  popMatrix();
  pushMatrix();
  translate(mouseX+70, mouseY-50);
  rotate(radians(-15));
  arc(15, 0, 30, 13, PI, TWO_PI);
  popMatrix();
  pushMatrix();
  fill(255, 0, 0);
  translate(mouseX-85, mouseY-80);
  rotate(radians(45));
  popMatrix();

  rb = 5;
  rf = 0;
}
