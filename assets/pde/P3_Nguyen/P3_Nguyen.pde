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
