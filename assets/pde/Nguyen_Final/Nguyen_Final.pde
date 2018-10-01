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
