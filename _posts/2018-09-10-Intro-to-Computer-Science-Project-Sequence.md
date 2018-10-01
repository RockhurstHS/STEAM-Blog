---
layout: post
author: jwclark
title: Project Sequence - Intro to Computer Science 
excerpt: Since every single freshmen at Rockhurst High School takes this course, our goal is to appeal to the broadest audience possible and to provide a more interesting feedback experience. If you ask our students what they want to learn, you will find the majority point to virtual reality and game design.
---

In our Intro to Computer Science course, we currently teach computer programming in the language [Processing](https://processing.org/) using two dimensional drawing and animation to provide some context. For homework, students complete the [Khan Academy Intro to JS & Animation](https://www.khanacademy.org/computing/computer-programming/programming#intro-to-programming) unit which conveniently aligns with our course.

To practically explore computer science concepts it is essential to develop fundamental computational thinking skills. To borrow a quote from Karl Beecher's Medium article, [Teach our kids to code? No, first teach them how to think](https://medium.com/@karlbeecher/teach-our-kids-to-code-no-first-teach-them-how-to-think-f524fb8dd6d3), 

> *"Interestingly, coding languages — for all the endless variety of languages, platforms and paradigms — share a relatively small number of core concepts."*

The core concepts we touch upon are pretty much standard across any intro programming class and these topics are:

 - Variables
 - Expressions and Operators
 - Selection (if else)
 - Functions, Parameters, and Return Types
 - Arrays & Lists
 - Loops (for and while)
 - Classes & Objects

In teaching this list of topics, we have the students over a course of nine end of unit projects maintain a single animated sprite. This is their code base for the semester and it is unique to each of them. One of the great things about this exercise is the requirement that students need to think and problem solve alone. In so doing, each student must take ownership of their knowledge and demonstrate it in an applied sense.

Since every single freshmen at Rockhurst High School takes this course, our goal is to appeal to the broadest audience possible and to provide a more interesting feedback experience. If you ask our students what they want to learn, you will find the majority point to virtual reality and game design.

So, we have them write code that generates visuals. That's the cool thing about Processing - the output is a drawing sketchbook. Teaching with Processing is unlike the traditional text-in, text-out approach to learning programming. Let's take a look at the sequence of a semester project in this course.

## Project 1 - Build a Sprite

We start with some basic shape commands as students begin taking their imagination and crafting it into something made with code. In the series that follows, I share the work of Khoa Nguyen, class of 2020.

``` java
size(200, 200);

//neck
quad(134, 80, 146, 35, 152, 54, 142, 89);

//head
ellipse(100+56, 100-65, 50, 50);

//beak
ellipse(180, 50, 30, 13);
arc(181, 51, 27, 2, 0, PI);

//eyes
ellipse(174, 35, 9, 9);
ellipse(154, 34, 13, 13);
ellipse(175, 34, 2, 2);
ellipse(155, 33, 4, 4);

//backwing
rectMode(CENTER);
rect(101, 48, 27, 46);
rect(100, 49, 27, 46);

//tailfeathers
triangle(27, 100, 71, 77, 65, 107);
triangle(26, 82, 84, 68, 51, 93);

//left foot
triangle(77, 141, 84, 141, 81, 159);
triangle(81, 132, 83, 141, 66, 155);
triangle(81, 132, 79, 141, 96, 156);

//right foot
pushMatrix();
translate(48, 0);
rect(81, 126, 3, 31);
triangle(77, 141, 84, 141, 81, 159);
triangle(81, 132, 83, 141, 66, 155);
triangle(81, 132, 79, 141, 96, 156);
popMatrix();
rect(81, 120, 3, 31);
rect(129, 120, 3, 31);
ellipse(100, 90, 103, 50);
rect(94, 54, 31, 50);
rect(93, 55, 31, 50);
```

It's black and white, and it's taken form. It's a turkey!

<canvas data-processing-sources="{{ site.baseurl }}/assets/pde/P1_Nguyen/P1_Nguyen.pde"></canvas>

## Project 2 - Colorful Sprite

Students learn about RGB (stands for red, green, blue) and additive color as they apply it in an 8-bit number system. In the process, they learn a little bit (pun intended) about the binary number system and conversion to and from decimal. Ultimately, we have them add color to their sprite.

``` java
size(200, 200);
background(255);

//neck
fill(48);
quad(134, 80, 146, 35, 152, 54, 142, 89);

//head
noStroke();
fill(63);
ellipse(100+56, 100-65, 50, 50);

//beak
fill(200);
ellipse(180, 50, 30, 13);
noFill();
stroke(0);
arc(181, 51, 27, 2, 0, PI);
noStroke();

//eyes
fill(0);
ellipse(174, 35, 9, 9);
ellipse(154, 34, 13, 13);
fill(255);
ellipse(175, 34, 2, 2);
ellipse(155, 33, 4, 4);

//backwing
colorMode(HSB);
rectMode(CENTER);
fill(23, 142, 91, 200);
rect(101, 48, 27, 46);
fill(23, 100, 101, 150);
rect(100, 49, 27, 46);
colorMode(RGB);

//tailfeathers
fill(0);
triangle(27, 100, 71, 77, 65, 107);
fill(23, 12, 0);
triangle(26, 82, 84, 68, 51, 93);

//left foot
noStroke();
fill(63);
triangle(77, 141, 84, 141, 81, 159);
triangle(81, 132, 83, 141, 66, 155);
triangle(81, 132, 79, 141, 96, 156);

//right foot
pushMatrix();
translate(48, 0);
fill(63);
triangle(77, 141, 84, 141, 81, 159);
triangle(81, 132, 83, 141, 66, 155);
triangle(81, 132, 79, 141, 96, 156);
popMatrix();

// legs
fill(31);
rect(81, 120, 3, 31);
rect(129, 120, 3, 31);

//body
colorMode(HSB);
fill(23, 100, 101);
ellipse(100, 90, 103, 50);
colorMode(RGB);

//frontwing
colorMode(HSB);
fill(23, 142, 91, 200);
rect(94, 54, 31, 50);
fill(23, 100, 101, 150);
rect(93, 55, 31, 50);
colorMode(RGB);
```

Now it's a colorful turkey!

<canvas data-processing-sources="{{ site.baseurl }}/assets/pde/P2_Nguyen/P2_Nguyen.pde"></canvas>

## Project 3 - Moving Sprite

Students learn about the incremental development process as they apply variables and arithmetic to draw points moving relative to the mouse position. It's more tedious than it is challenging as students run their code again and again after each change is made to test and evaluate their modifications.

``` java
void setup() {
  size(200, 200);
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

  //beak
  fill(200);
  ellipse(mouseX+80, mouseY-50, 30, 13);
  noFill();
  stroke(0);
  arc(mouseX+81, mouseY-49, 27, 2, 0, PI);
  fill(255);
  noStroke();

  //eyes
  fill(0);
  ellipse(mouseX+74, mouseY-65, 9, 9);
  ellipse(mouseX+54, mouseY-66, 13, 13);
  fill(255);
  ellipse(mouseX+75, mouseY-66, 2, 2);
  ellipse(mouseX+55, mouseY-67, 4, 4);

  //backwing
  colorMode(HSB);
  rectMode(CENTER);
  fill(23, 142, 91, 200);
  rect(mouseX+1, mouseY-52, 27, 46, 10, 5, 0, 20);
  fill(23, 100, 101, 150);
  rect(mouseX+0, mouseY-51, 27, 46, 10, 5, 0, 20);
  colorMode(RGB);

  //tailfeathers
  fill(0);
  triangle(mouseX-73, mouseY-0, mouseX-29, mouseY-23, mouseX-35, mouseY+7);
  fill(23, 12, 0);
  triangle(mouseX-74, mouseY-18, mouseX-16, mouseY-32, mouseX-49, mouseY-7);

  //left foot
  noStroke();
  fill(63);
  triangle(mouseX-23, mouseY+41, mouseX-16, mouseY+41, mouseX-19, mouseY+59);
  triangle(mouseX-19, mouseY+32, mouseX-17, mouseY+41, mouseX-34, mouseY+55);
  triangle(mouseX-19, mouseY+32, mouseX-21, mouseY+41, mouseX-4, mouseY+56);

  //right foot
  pushMatrix();
  translate(48, 0);
  fill(31);
  fill(63);
  triangle(mouseX-23, mouseY+41, mouseX-16, mouseY+41, mouseX-19, mouseY+59);
  triangle(mouseX-19, mouseY+32, mouseX-17, mouseY+41, mouseX-34, mouseY+55);
  triangle(mouseX-19, mouseY+32, mouseX-21, mouseY+41, mouseX-4, mouseY+56);
  popMatrix();

  //legs
  fill(31);
  rect(mouseX-19, mouseY+20, 3, 31);
  rect(mouseX+29, mouseY+20, 3, 31);

  //body
  colorMode(HSB);
  fill(23, 100, 101);
  ellipse(mouseX+0, mouseY-10, 103, 50);
  colorMode(RGB);

  //frontwing
  colorMode(HSB);
  fill(23, 142, 91, 200);
  rect(mouseX-6, mouseY-46, 31, 50, 10, 5, 0, 20);
  fill(23, 100, 101, 150);
  rect(mouseX-7, mouseY-45, 31, 50, 10, 5, 0, 20);
  colorMode(RGB);
}
```

Test by tapping the phone screen or moving your mouse. This is buildup for automating movement on the final. 

**Move with the mouse or tap your phone screen**

<canvas data-processing-sources="{{ site.baseurl }}/assets/pde/P3_Nguyen/P3_Nguyen.pde"></canvas>

## Project 4 - Applied Rotation

Students are lightly introduced to radians (the angle from start to stop inside a circle after traversing the length of its radius along the perimeter) as they apply rotations to some of their shapes. Moreover, this topic sets the foundation for further study in their sophomore and junior level mathematics classes.

It turns out a single rotation in Processing can take up to four lines of extra code as we also have to move the origin of the sketch as well as restore it back to its original position when we're done with it. Otherwise, the shapes only rotate around the top left corner, or the origin.

``` java
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

  //eyes
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

  //body
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
```

Same as before, but with the addition of some rotated shapes. In this case, it's the beak, a wing, and one of the legs.

**Move with the mouse or tap your phone screen**

<canvas data-processing-sources="{{ site.baseurl }}/assets/pde/P4_Nguyen/P4_Nguyen.pde"></canvas>

## Project 5 - Conditional Sprite

Students handle a couple of different keyboard characters as they apply selection with if and else to draw their sprite according to the different keypress states.

``` java
float x = 54; // centered at 90
float y = height-55; // centered at 116
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
  println("Press W to waddle, H to honk.");
}

void draw() {
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
  popMatrix();
  colorMode(RGB);

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
  popMatrix();
  colorMode(RGB);

  //beak
  fill(200);
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
    pushMatrix();
    fill(255, 0, 0);
    translate(x-85, y-80);
    rotate(radians(45));
    textSize(70);
    text("HONK!", 0, 0);
    popMatrix();
  } else {
    ellipse(x+80, y-50, 30, 13);
    noFill();
    stroke(0);
    arc(x+80, y-49, 27, 2, 0, PI);
    fill(255);
    noStroke();
  }
  y = step ? height-55:height-60;
  if (frame == 1) {
    rb = 10;
    rf = -5;
  }
  if (frame == 2) {
    rb = 15;
    rf = -10;
  }
  if (frame == 3) {
    rb = 20;
    rf = -15;
  }
  if (frame == 4) {
    rb = 15;
    rf = -20;
  }
  if (frame == 5) {
    rb = 10;
    rf = -15;
  }
  if (frame == 6) {
    rb = 5;
    rf = -10;
  }
  if (frame == 7) {
    rb = 0;
    rf = -5;
  }
  if (frame == 8) {
    rb = -5;
    rf = 0;
  }
  if (frame == 9) {
    rb = -10;
    rf = 5;
  }
  if (frame == 10) {
    rb = -15;
    rf = 10;
  }
  if (frame == 11) {
    rb = -20;
    rf = 15;
  }
  if (frame == 12) {
    rb = -15;
    rf = 20;
  }
  if (frame == 13) {
    rb = -10;
    rf = 15;
  }
  if (frame == 14) {
    rb = -5;
    rf = 10;
  }
  if (frame == 15) {
    rb = 0;
    rf = 5;
  }
  if (frame == 16) {
    rb = 5;
    rf = 0;
  }
}

void keyPressed() {
  if (key == 'h' || key == 'H') {
    gooseHonking = !gooseHonking;
  }
  if (key == 'w' || key == 'W') {
    step = !step;
    x += 5;
    if (frame < numFrames) {
      frame++;
    } else {
      frame = 1;
    }
  }
}
```

Try pressing the 'w' or 'h' keys. The turkey walks in steps or "honks" for you. Phone users might be able to demo this if they can pull up a virtual keyboard.

This project is buildup for automation. If we can control it with a keyboard, we can control it with time later.

**Press the 'w' or 'h' keys, may not work on mobile.**

<canvas data-processing-sources="{{ site.baseurl }}/assets/pde/P5_Nguyen/P5_Nguyen.pde"></canvas>

## Project 6

Students write repetitious code with loops to repeat instructions. Writing a loop to draw shapes relative to a moving coordinate is not so obvious to a new programmer.

``` java
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
```

Details were added to the wings with nested for loops. The wings have feathers now.

**Move with the mouse or tap your phone screen**

<canvas data-processing-sources="{{ site.baseurl }}/assets/pde/P6_Nguyen/P6_Nguyen.pde"></canvas>

## Project 7

Students refactor (reorganize and restructure) their code into functions. This is pretty easy for them if they used comments since the beginning to identify the different parts of the sprite. It's mostly just a maintenance task as we prepare for writing classes.

``` java
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
boolean gooseHonking = false;
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
boolean gooseHonkingStart = false;

void setup() {
  size(500, 500);
  println("By default, the goose follows your mouse. Press W to let him waddle foreward.  You can press W again to have him follow your mouse again. Press H to have him honk.");
}

void draw() {
  background(66, 77, 88);
  drawSprite();
}

void waddle() {
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
}

void neck() {
  //neck
  fill(48);
  quad(x+34, y-20, x+46, y-65, x+52, y-46, x+42, y-11);  
}

void head() {
  //head
  noStroke();
  fill(63);
  ellipse(x+56, y-65, 50, 50);  
}

void eyes() {
  //eyes
  fill(0);
  ellipse(x+74, y-65, smallEyeSize, smallEyeSize);
  ellipse(x+54, y-66, largeEyeSize, largeEyeSize);
  fill(255);
  ellipse(x+75, y-66, smallPupilSize, smallPupilSize);
  ellipse(x+55, y-67, largePupilSize, largePupilSize);  
}

void backwing() {
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
      stroke(23, 142, random(60, 110));
      arc(k, l, 6, 8, 0, PI);
    }
  }
  popMatrix();
  colorMode(RGB);
  noStroke();
}

void tailfeathers() {
  //tailfeathers
  fill(0);
  triangle(x-73, y-0, x-29, y-23, x-35, y+7);
  fill(23, 12, 0);
  triangle(x-74, y-18, x-16, y-32, x-49, y-7);
}

void leftfoot() {
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
}

void rightfoot() {
  //right foot
  fill(63);
  pushMatrix();
  translate(x+28, y+5);
  rotate(radians(step ? 0:-45));
  triangle(-2, 37, 5, 37, 2, 55);
  triangle(2, 28, 4, 37, -13, 51);
  triangle(2, 28, 0, 37, 17, 52);
  popMatrix();
}

void legs() {
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
}

void frontwing() {
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
      stroke(23, 142, random(60, 110));
      arc(k, l, 6, 8, 0, PI);
    }
  }
  popMatrix();
  colorMode(RGB);
  noStroke();
}

void body() {
  //body
  colorMode(HSB);
  fill(23, 100, bodyBrightness);
  ellipse(x+0, y-10, 103, 50);
  colorMode(RGB);
}

void beak() {
  //beak
  fill(200);
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

void honking() {
  if (gooseHonkingStart) {
    for (int i = 0; i < numHonks; i++) {
      honkX[i] = random(70, width-70);
      honkY[i] = random(70, height-70);
    }
    gooseHonkingStart = false;
    gooseHonking = true;
  }
  if (gooseHonking) {
    wait--;
    if (wait > 0) {
      for (int j = 0; j < numHonks; j++) {
        pushMatrix();
        fill(255, 0, 0);
        translate(honkX[j]-85, honkY[j]-80);
        rotate(radians(45));
        textSize(70);
        text("HONK!", 0, 0);
        popMatrix();
      }
    } else {
      wait = 30;
      gooseHonking = false;
    }
  }
}

void morewaddling() {
  if (gooseWaddling) {
    x += 5;
    y = step ? y - 2: y + 2;
  }
  if (c < 5) {
    c++;
  } else {
    step = !step;
    frame = frame < numFrames ? frame += 1: 1;
    c = 0;
  }
  //y = step ? height-55:height-60;
  if (frame == 1) {
    rb = 10;
    rf = -5;
  }
  if (frame == 2) {
    rb = 15;
    rf = -10;
  }
  if (frame == 3) {
    rb = 20;
    rf = -15;
  }
  if (frame == 4) {
    rb = 15;
    rf = -20;
  }
  if (frame == 5) {
    rb = 10;
    rf = -15;
  }
  if (frame == 6) {
    rb = 5;
    rf = -10;
  }
  if (frame == 7) {
    rb = 0;
    rf = -5;
  }
  if (frame == 8) {
    rb = -5;
    rf = 0;
  }
  if (frame == 9) {
    rb = -10;
    rf = 5;
  }
  if (frame == 10) {
    rb = -15;
    rf = 10;
  }
  if (frame == 11) {
    rb = -20;
    rf = 15;
  }
  if (frame == 12) {
    rb = -15;
    rf = 20;
  }
  if (frame == 13) {
    rb = -10;
    rf = 15;
  }
  if (frame == 14) {
    rb = -5;
    rf = 10;
  }
  if (frame == 15) {
    rb = 0;
    rf = 5;
  }
  if (frame == 16) {
    rb = 5;
    rf = 0;
  }
}

void drawSprite() {
  waddle();
  neck();
  head();
  eyes();
  backwing();
  tailfeathers();
  leftfoot();
  rightfoot();
  legs();
  body();
  frontwing();
  beak();
  honking();
  morewaddling();
}

void keyPressed() {
  if (key == 'h' || key == 'H') {
    gooseHonkingStart = true;
  }
  if (key == 'w' || key == 'W') {
    gooseWaddling = !gooseWaddling;
  }
}
```

Try the 'w' and 'h' keys again. You may have to click on the sketch to focus it. Toggle the forward walk by pressing 'w' and again after some delay. See how the turkey moves forward then returns back. This is some great work by Khoa figuring out how to automate movement from one location to another.

**Press the 'w' or 'h' keys while moving with the mouse, may not work on mobile.**

<canvas data-processing-sources="{{ site.baseurl }}/assets/pde/P7_Nguyen/P7_Nguyen.pde"></canvas>

## Project 8 - Sprite Class

Project 8 involves taking the previous functional composition of the sprite logic and encapsulating it in a class. Using a class as a template, students are able to duplicate and reuse their sprite without copying all of the code again for each reuse.

``` java
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

Creature c1;
Creature c2;
Creature c3;

void setup() {
  size(500, 500); 
  c1 = new Creature(150, 370, 13, 10, 5, 101, color(63), color(48), color(200), color(23, 12, 0), color(0), color(255, 0, 0));
  c2 = new Creature(130, 130, 17, 14, 2, 200, color(100, 100, 200), color(50, 50, 150), color(200, 200, 255), color(100, 50, 0), color(50, 20, 0), color(0, 255, 0));
  c3 = new Creature(350, 200, 10, 8, 3, 50, color(50, 100, 50), color(50), color(198, 209, 220), color(100), color(150), color(0, 0, 255));
}

void draw() {
  background(66, 77, 88);
  c1.drawCreature();
  c2.drawCreature();
  c3.drawCreature();
  c1.honk();
  c2.honk();
  c3.honk();
}
```

Check it out! Customizations can be applied by modifying the constructor used to instantiate new turkey objects from the class. This is where we pick up in [AP Computer Science A](https://apstudent.collegeboard.org/apcourse/ap-computer-science-a) by the way...

**Fully automated, no interactions necessary**

<canvas data-processing-sources="{{ site.baseurl }}/assets/pde/P8_Nguyen/Creature.pde {{ site.baseurl }}/assets/pde/P8_Nguyen/P8_Nguyen.pde"></canvas>

## Final Project

In the final project, students automate movements around the screen. This could be renamed to Project Screensaver because that's what it looks like once all the students put their code into one master project.

``` java
interface Creature {
  void display();
  void move();
}

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

ArrayList<Creature> list = new ArrayList<Creature>();
Creature c = new Nguyen(390, 316, 13, 10, 5, 101, color(63), color(48), color(200), color(23, 12, 0), color(0));

void setup() {
  size(800, 600);
  list.add(c);
}

void draw() {
  background(66, 77, 88);
  restoreDefaults();
  for (Creature c : list) {
    c.move();
    c.display();
  }
}

void restoreDefaults() {
  noStroke();
  fill(0);
  strokeWeight(1);
  rectMode(CORNER);
  ellipseMode(CENTER);
}
```

And here it is - a fully automated, hands-free sprite in action! The little guy is all over the place flappin' and honkin'. It only took 350 lines of code... and now the students are discussing how much code it would take to build Fortnite or Grand Theft Auto.

**Fully automated, and free to roam about the cabin!**

<canvas data-processing-sources="{{ site.baseurl }}/assets/pde/Nguyen_Final/Creature.pde {{ site.baseurl }}/assets/pde/Nguyen_Final/Nguyen.pde {{ site.baseurl }}/assets/pde/Nguyen_Final/Nguyen_Final.pde"></canvas>

Thanks for reading and please leave a comment or feel free to contact me to talk about things computer science or code related, jwclark@rockhursths.edu.