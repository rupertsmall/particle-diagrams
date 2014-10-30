int S=200;
float sweight = 2; //stroke weight
color black=color(0);
color cred=color(255, 0, 0);
color cblue=color(0, 0, 255);
color cgreen=color(0, 255, 0);

void setup() {
  size(3*S, floor(2*S));
  fill(0);
  noLoop();
  background(255);
}

void draw() {
  smooth();
  strokeWeight(sweight);
  //t_28(cred);
  //t_24(cred, cblue);
  //t_4_a(cred, cblue, cgreen);
  //t_2(cred, cblue, cgreen);
  //t_8_a(cred, cblue, cgreen);
  //t_4_b(cred, cblue, cgreen);
  t_4_b_modA(cred, cblue, cgreen);
  //t_4_b_modB(cred, cblue, cgreen);
  //t_8_b(cred, cblue);
  //t_8_c(cred, cblue);
  //t_4_c(cred, cblue);
}


void mk_share(float x1, float y1, float x2, float y2, color c) {
  stroke(c);
  smooth();
  line(x1, y1, x2, y2);
}

void k_share(float x1, float y1, float x2, float y2, color c) {
  float d1=(y2-y1);
  float d2=(x2-x1);
  float angle=atan(d1/d2);
  strokeCap(SQUARE);
  stroke(c);
  line(x1, y1, x2, y2);
  pushMatrix();
  translate(x1, y1);
  rotate(angle);
  strokeWeight(sweight*2);
  for (float i=3 ; i < dist(x1,y1,x2,y2); i += 10)
  {
    stroke(255);
    line(i, 0, i+3, 0);
  }
  strokeWeight(sweight);
  popMatrix();
}


void t_28(color c) {
  stroke(0);
  line(20, 100, 220, 100);
  mk_share(220, 100, 310, 10, black);
  mk_share(400, 100, 310, 190, black);
  k_share(220, 100, 310, 190, black);
  k_share(310, 10, 400, 100, black);

  k_share(230, 100, 310, 20, c);
  k_share(310, 180, 390, 100, c);
  mk_share(230, 100, 310, 180, c);
  mk_share(390, 100, 310, 20, c);

  save("t_28.png");
}

void t_24(color c1, color c2) {
  stroke(0);
  line(20, 150, 120, 150);
  mk_share(188, 190, 255, 150, black);
  mk_share(188, 70, 255, 30, black);
  k_share(188, 190, 188, 70, black);
  k_share(255, 150, 255, 30, black);

  mk_share(120, 150, 120, 30, c1);
  mk_share(250, 150, 250, 30, c1);
  k_share(120, 150, 250, 150, c1);
  k_share(120, 30, 250, 30, c1);

  k_share(115, 150, 115, 30, c2);
  k_share(182, 190, 182, 70, c2);
  mk_share(182, 190, 115, 150, c2);
  mk_share(182, 70, 115, 30, c2);

  save("t_24.png");
}

void t_4_a(color c1, color c2, color c3) {
  translate(0, 40);

  mk_share(120, 150, 120, 30, c1);
  mk_share(182, 110, 182, -10, c1);
  k_share(120, 150, 182, 110, c1);
  k_share(120, 30, 182, -10, c1);

  k_share(115, 150, 115, 30, c2);
  k_share(182, 190, 182, 70, c2);
  mk_share(182, 190, 115, 150, c2);
  mk_share(182, 70, 115, 30, c2);

  mk_share(188, 110, 188, -10, c3);
  mk_share(250, 150, 250, 30, c3);
  k_share(188, 110, 250, 150, c3);
  k_share(188, -10, 250, 30, c3);

  mk_share(188, 190, 255, 150, black);
  mk_share(188, 70, 255, 30, black);
  k_share(188, 190, 188, 70, black);
  k_share(255, 150, 255, 30, black);

  save("t_4_a.png");
}


void t_2(color c1, color c2, color c3) {
  translate(0, 40);

  mk_share(20, 20, 100, 20, black);
  mk_share(20, 100, 100, 100, black);
  k_share(20, 100, 20, 20, black);
  k_share(100, 100, 100, 20, black);

  translate(85, 0);

  mk_share(20, 20, 100, 20, c3);
  mk_share(20, 100, 100, 100, c3);
  k_share(20, 100, 20, 20, c3);
  k_share(100, 100, 100, 20, c3);

  translate(150, 0);

  mk_share(20, 20, 100, 20, c2);
  mk_share(20, 100, 100, 100, c2);
  k_share(20, 100, 20, 20, c2);
  k_share(100, 100, 100, 20, c2);

  translate(85, 0);

  mk_share(20, 20, 100, 20, c1);
  mk_share(20, 100, 100, 100, c1);
  k_share(20, 100, 20, 20, c1);
  k_share(100, 100, 100, 20, c1);


  save("t_2.png");
}


void t_8_a(color c1, color c2, color c3) {
  translate(0, 40);

  mk_share(20, 20, 100, 20, black);
  mk_share(20, 100, 100, 100, black);
  k_share(20, 100, 20, 20, black);
  k_share(100, 100, 100, 20, black);

  translate(85, 0);

  k_share(20, 20, 100, 20, c3);
  k_share(20, 100, 100, 100, c3);
  mk_share(20, 100, 20, 20, c3);
  mk_share(100, 100, 100, 20, c3);

  translate(150, 0);

  k_share(20, 20, 100, 20, c2);
  k_share(20, 100, 100, 100, c2);
  mk_share(20, 100, 20, 20, c2);
  mk_share(100, 100, 100, 20, c2);

  translate(85, 0);

  mk_share(20, 20, 100, 20, c1);
  mk_share(20, 100, 100, 100, c1);
  k_share(20, 100, 20, 20, c1);
  k_share(100, 100, 100, 20, c1);


  save("t_8_a.png");
}

void t_4_b(color c1, color c2, color c3) {

  mk_share(220, 100, 310, 10, black);
  mk_share(400, 100, 310, 190, black);
  k_share(220, 100, 310, 190, black);
  k_share(310, 10, 400, 100, black);

  k_share(230, 100, 310, 20, c1);
  k_share(310, 180, 390, 100, c1);
  mk_share(230, 100, 310, 180, c1);
  mk_share(390, 100, 310, 20, c1);

  translate(-180, 0);

  mk_share(220, 100, 310, 10, c2);
  mk_share(400, 100, 310, 190, c2);
  k_share(220, 100, 310, 190, c2);
  k_share(310, 10, 400, 100, c2);

  k_share(230, 100, 310, 20, c3);
  k_share(310, 180, 390, 100, c3);
  mk_share(230, 100, 310, 180, c3);
  mk_share(390, 100, 310, 20, c3);

  save("t_4_b.png");
}

void t_4_b_modA(color c1, color c2, color c3) {

  //red, blue, green
  translate(170, 20);
  mk_share(150, 100, 310, 10, black); //stretch left
  mk_share(400, 100, 310, 190, black);
  k_share(150, 100, 310, 190, black); //stretch left
  k_share(310, 10, 400, 100, black);

  k_share(230, 100, 310, 20, c1);
  k_share(310, 180, 390, 100, c1);
  mk_share(230, 100, 310, 180, c1);
  mk_share(390, 100, 310, 20, c1);

  translate(-320, 0);

  mk_share(220, 100, 310, 10, c2);
  mk_share(470, 100, 310, 190, c2); //stretch right
  k_share(220, 100, 310, 190, c2);
  k_share(310, 10, 470, 100, c2); // stretch right

  k_share(230, 100, 310, 20, c3);
  k_share(310, 180, 390, 100, c3);
  mk_share(230, 100, 310, 180, c3);
  mk_share(390, 100, 310, 20, c3);

  save("t_4_b_modA.png");
}

void t_4_b_modB(color c1, color c2, color c3) {

  //red, blue, green
  translate(170, 20);
  k_share(60, 100, 310, 10, c1); //stretch left
  k_share(310, 190, 400, 100, c1);
  mk_share(60, 100, 310, 190, c1); //stretch left
  mk_share(310, 10, 400, 100, c1);

  mk_share(230, 100, 310, 20, black);
  mk_share(310, 180, 390, 100, black);
  k_share(230, 100, 310, 180, black);
  k_share(310, 20, 390, 100, black);

  translate(-320, 0);
   //blue
  mk_share(220, 100, 310, 10, c2);
  mk_share(310, 190, 560, 100, c2); //stretch right
  k_share(220, 100, 310, 190, c2);
  k_share(310, 10, 560, 100, c2); // stretch right
  //green
  k_share(230, 100, 310, 20, c3);
  k_share(310, 180, 390, 100, c3);
  mk_share(230, 100, 310, 180, c3);
  mk_share(390, 100, 310, 20, c3);

  save("t_4_b_modB.png");
}


void t_8_b(color c1, color c2) {

  pushMatrix();
  scale(1.3, 1.3);

  stroke(0);
  line(30, 125, 120, 120);

  mk_share(120, 120, 160, 170, black);
  mk_share(195, 115, 250, 160, black);
  k_share(120, 120, 250, 160, black);
  k_share(160, 170, 195, 115, black);

  k_share(120, 120, 190, 20, c1);
  mk_share(190, 20, 195, 115, c1);
  k_share(180, 250, 195, 115, c1);
  mk_share(120, 120, 180, 250, c1);

  mk_share(160, 170, 190, 20, c2);
  mk_share(180, 250, 250, 160, c2);
  k_share(160, 170, 180, 250, c2);
  k_share(190, 20, 250, 160, c2);

  fill(102, 100);
  noStroke();
  beginShape();
  vertex(120, 120);
  vertex(160, 170);
  vertex(250, 160);
  vertex(195, 115);
  endShape(CLOSE);

  popMatrix();

  save("t_8_b.png");
}

void t_8_c(color c1, color c2) {

  translate(0, 40);

  mk_share(20, 20, 100, 20, c1);
  mk_share(20, 100, 100, 100, c1);
  k_share(20, 100, 20, 20, c1);
  k_share(100, 100, 100, 20, c1);

  translate(85, 0);

  k_share(20, 20, 100, 20, c2);
  k_share(20, 100, 100, 100, c2);
  mk_share(20, 100, 20, 20, c2);
  mk_share(100, 100, 100, 20, c2);

  pushMatrix();
  translate(-105, -60);
  pushMatrix();
  rotate(-PI/4);
  pushMatrix();
  translate(110, 280);
  mk_share(0, 0, 80, 0, black);
  mk_share(0, 80, 80, 80, black);
  k_share(0, 80, 0, 0, black);
  k_share(80, 80, 80, 0, black);
  popMatrix();
  popMatrix();
  popMatrix();

  translate(170, 0);

  pushMatrix();
  translate(-105, -60);
  pushMatrix();
  rotate(-PI/4);
  pushMatrix();
  translate(110, 280);
  k_share(0, 0, 80, 0, black);
  k_share(0, 80, 80, 80, black);
  mk_share(0, 80, 0, 0, black);
  mk_share(80, 80, 80, 0, black);
  popMatrix();
  popMatrix();
  popMatrix();

  save("t_8_c.png");
}

void t_4_c(color c1, color c2) {

  translate(0, 40);

  mk_share(20, 20, 100, 20, c1);
  mk_share(20, 100, 100, 100, c1);
  k_share(20, 100, 20, 20, c1);
  k_share(100, 100, 100, 20, c1);

  translate(85, 0);

  mk_share(20, 20, 100, 20, c2);
  mk_share(20, 100, 100, 100, c2);
  k_share(20, 100, 20, 20, c2);
  k_share(100, 100, 100, 20, c2);

  pushMatrix();
  translate(-105, -60);
  pushMatrix();
  rotate(-PI/4);
  pushMatrix();
  translate(110, 280);
  mk_share(0, 0, 80, 0, black);
  mk_share(0, 80, 80, 80, black);
  k_share(0, 80, 0, 0, black);
  k_share(80, 80, 80, 0, black);
  popMatrix();
  popMatrix();
  popMatrix();

  translate(170, 0);

  pushMatrix();
  translate(-105, -60);
  pushMatrix();
  rotate(-PI/4);
  pushMatrix();
  translate(110, 280);
  k_share(0, 0, 80, 0, black);
  k_share(0, 80, 80, 80, black);
  mk_share(0, 80, 0, 0, black);
  mk_share(80, 80, 80, 0, black);
  popMatrix();
  popMatrix();
  popMatrix();

  save("t_4_c.png");
}
