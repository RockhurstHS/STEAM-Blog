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
