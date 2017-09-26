size(500, 500);
PShape s = loadShape("/assets/bot.svg");
background(255);
fill(1, 125, 674);
ellipseMode(RADIUS);  // Set ellipseMode to RADIUS
fill(122);  // Set fill to whit
fill(254);  // Set fill to gray
ellipseMode(RADIUS);  // Set ellipseMode to RADIUS
fill(255);  // Set fill to white
ellipseMode(CENTER);  // Set ellipseMode to CENTER
fill(243, 221, 43);
arc(206, 367, 126, 132, -1, PI+QUARTER_PI, PIE);
fill(108);  // Set fill to gray
shape(s, 167, 239, 66, 71);
shape(s, 166, 42, 66, 71);
shape(s, 166, 141, 66, 71);
ellipseMode(RADIUS);  // Set ellipseMode to RADIUS
fill(255);  // Set fill to white
ellipse(165, 356, 24, 19);  // Draw white ellipse using RADIUS mode
ellipseMode(CENTER);  // Set ellipseMode to CENTER
fill(100);  // Set fill to gray
ellipse(166, 356, 36, 29);  // Draw gray ellipse using CENTER mode