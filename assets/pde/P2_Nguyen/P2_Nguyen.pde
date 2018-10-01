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
