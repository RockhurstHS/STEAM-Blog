float smallX, smallY;
int smallSize = 40, largeSize = 80;

void setup() {
  size(500, 500);
  smallX = random(width);
  smallY = random(height-50);
  textSize(16);
}

void draw() {
  background(255);
  fill(0);
  line(smallX, smallY, mouseX, mouseY);
  ellipse(smallX, smallY, smallSize, smallSize);
  ellipse(mouseX, mouseY, largeSize, largeSize);
  
  float distance = 
      sqrt(pow(smallX - mouseX, 2) + pow(smallY - mouseY, 2));
  text("Distance: " + distance, 50, 50);
}
