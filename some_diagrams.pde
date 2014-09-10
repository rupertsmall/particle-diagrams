// squiggles for the symplectic case calculations


float f=0.9;  //frequency of sine and cosine, as in sine(f*x)
float sine_inc = 0.5;  //sine increment
int S=150;
float sweight = .6; //stroke weight

void setup() {
  size(floor(1.75*S), S+60);
  fill(0);
  noLoop();
  background(255);
}

void draw() {
  scale(S/100.0);
  smooth();
  strokeWeight(sweight);
  //squiggle_1();
  //squiggle_2();
  //squiggle_3();
  //squiggle_4();
  //squiggle_5();
  //squiggle_6();
  //squiggle_7();
  //squiggle_8();
  //squiggle_9();
  //squiggle_10();
  //squiggle_11();
  //fish();
  //prism();
  cube();
}

void k_map(float x1, float y1, float x2, float y2) {
  float d1=(y2-y1);
  float d2=(x2-x1);
  float angle=atan(d1/d2);
  pushMatrix();
  translate(x1, y1);
  rotate(angle);
  strokeCap(ROUND);
  for (float i = 0; i < dist(x1,y1,x2,y2) ; i += sine_inc)
  {
    point(i, sin(f*i)); //,i+sine_inc),sin(f*(i+sine_inc)));
  }
  strokeCap(SQUARE);
  popMatrix();
}

void mk_share(float x1, float y1, float x2, float y2) {
  line(x1, y1, x2, y2);
}

void k_share(float x1, float y1, float x2, float y2) {
  float d1=(y2-y1);
  float d2=(x2-x1);
  float angle=atan(d1/d2);
  strokeCap(SQUARE);
  line(x1, y1, x2, y2);
  stroke(255);
  pushMatrix();
  translate(x1, y1);
  rotate(angle);
  strokeWeight(sweight*2);
  for (float i=3 ; i < dist(x1,y1,x2,y2); i += 7)
  {
    line(i, 0, i+3, 0);
  }
  strokeWeight(sweight);
  popMatrix();
  stroke(0);
}

void squiggle_1() {
  k_share(5, 50, 95, 50);
  mk_share(5, 50, 50, 5);
  mk_share(50, 5, 95, 50);
  mk_share(5, 50, 50, 95);
  mk_share(50, 95, 95, 50);
  k_map(1, 50, 46, 95);
  k_map(54, 95, 99, 50);
  save("squiggle_01.jpg");
}

void squiggle_2() {
  mk_share(5, 50, 50, 5);
  mk_share(50, 5, 95, 50);
  mk_share(5, 50, 50, 95);
  mk_share(50, 95, 95, 50);
  k_map(1, 50, 46, 95);
  k_map(54, 95, 99, 50);
  k_map(1, 50, 46, 5);
  k_map(54, 5, 99, 50);
  save("squiggle_02.jpg");
}

void squiggle_3() {
  mk_share(5, 50, 50, 5);
  mk_share(50, 5, 95, 50);
  mk_share(5, 50, 50, 95);
  mk_share(50, 95, 95, 50);
  k_share(1, 50, 46, 95);
  k_map(50, 5, 50, 95);
  k_map(1, 50, 95, 50);
  k_share(54, 5, 98, 50);
  save("squiggle_03.jpg");
}

void squiggle_4() {
  mk_share(5, 50, 50, 5);
  mk_share(50, 5, 95, 50);
  mk_share(5, 50, 50, 95);
  mk_share(50, 95, 95, 50);
  k_map(50, 5, 50, 95);
  k_map(1, 50, 95, 50);
  save("squiggle_04.jpg");
}

void squiggle_5() {
  mk_share(5, 50, 50, 5);
  mk_share(50, 5, 95, 50);
  k_map(1, 50, 95, 50);
  save("squiggle_05.jpg");
}

void squiggle_6() {
  k_share(5, 50, 95, 50);
  mk_share(5, 50, 50, 5);
  mk_share(50, 5, 95, 50);
  mk_share(5, 50, 50, 95);
  mk_share(50, 95, 95, 50);
  save("squiggle_06.jpg");
}

void squiggle_7() {

  mk_share(50, 5, 95, 50);
  mk_share(5, 50, 50, 95);
  k_share(50, 95, 95, 50);
  k_share(1, 50, 50, 5);

  mk_share(1.5*S + 50, 95, 1.5*S + 95, 50);
  k_share(1.5*S + 1, 50, 1.5*S + 50, 95);
  mk_share(1.5*S + 5, 50, 1.5*S + 50, 5);
  k_share(1.5*S + 50, 5, 1.5*S + 95, 50);

  line(1.25*S, 0, 1.25*S, 100);
  save("squiggle_072.png");
}

void squiggle_8() {
  mk_share(5, 50, 95, 50);
  save("squiggle_08.jpg");
}

void squiggle_9() {
  mk_share(5, 50, 95, 50);
  k_share(5, 48, 95, 48);
  save("squiggle_09.jpg");
}

void squiggle_10() {
  mk_share(5, 50, 95, 50);
  k_map(5, 48, 95, 48);
  save("squiggle_10.jpg");
}

void squiggle_11() {
  k_share(5, 50, 95, 50);
  mk_share(5, 50, 50, 5);
  mk_share(50, 5, 95, 50);
  save("squiggle_11.jpg");
}

void fish() {

  pushMatrix();
  translate(10, 0);
  mk_share(50, 5, 95, 50);
  mk_share(5, 50, 50, 95);
  k_share(50, 95, 95, 50);
  k_share(1, 50, 50, 5);

  mk_share(50, 98, 98, 50);
  k_share(54, 5, 99, 50);
  mk_share(-3, 50, 46, 5);
  k_share(1, 50, 46, 95);

  popMatrix();

  line(110, 50, 170, 50);
  save("fish_map.png");
}

void prism() {

  pushMatrix();
  translate(10, 0);
  mk_share(5, 5, 5, 70);
  mk_share(5, 5, 50, 30);
  mk_share(50, 30, 90, 5);
  mk_share(90, 5, 90, 70);
  mk_share(90, 70, 50, 95);
  mk_share(50, 95, 5, 70);
  
  k_share(48, 30, 48, 95);
  k_share(52, 30, 52, 95);
  k_share(5, 70, 90, 70);
  k_share(5, 5, 90, 5);
  k_share(1, 5, 1, 70);
  k_share(94, 5, 94, 70);

  popMatrix();

  save("prism_map.png");
}

void cube() {

  pushMatrix();
  translate(5, 9);
  scale(1.7, 1.5);
  strokeWeight(.5);
  mk_share(15, 10, 40, 30);
  mk_share(70, 10, 45, 0);
  mk_share(46, 0, 46, 55);
  mk_share(45, 55, 70, 65);
  mk_share(70, 65, 40, 85);
  mk_share(40, 85, 15, 65);
  mk_share(15, 65, 15, 10);

  k_share(38, 30, 38, 85);
  k_share(40, 30, 40, 85);
  k_share(68, 10, 68, 65);
  k_share(70, 10, 70, 65);
  k_share(17, 10, 17, 65);
  k_share(48, 0, 48, 55);
  k_share(15, 10, 45, 0);
  k_share(15, 65, 45, 55);
  mk_share(40, 30, 70, 10);

  popMatrix();

  save("cube_map.png");
}
