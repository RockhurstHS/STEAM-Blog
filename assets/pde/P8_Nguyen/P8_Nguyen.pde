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