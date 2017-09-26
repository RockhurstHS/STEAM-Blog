void setup() {
  size(500, 500, P3D);
}

void draw() {
  background(0, 255, 0);
  stroke(189, 0, -2);
  translate(width/2, height/2, 0);
  rotateX(mouseY*0.05);
  rotateY(mouseX*0.05);
  fill(mouseX*0, 0, 0);
  sphereDetail(mouseX/5);
  sphere(200);
  fill(mouseX*255, 0, 0);
  ellipse(-128, 151, 150, 150);
  fill(mouseX*255, 0, 0);
  ellipse(150, 150, 150, 150);
  ellipse(10, 203, 150, 150);
}