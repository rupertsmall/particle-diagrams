
void setup() {

  size(400, 400, OPENGL); 
  background(255);
  //lights();
  camera(50, 220, -150, 50, 0, -50, 0, 0, 1);
  smooth(8);
}

void draw() {
  color surfc = color(0, 0, 0);
  noFill();
  stroke(0);
  float yy=sqrt(sq(50/(sin(PI/6))) - sq(50));
  noLoop();

  beginShape();
  vertex(0, 0, -100);
  vertex(100, 0, -100);
  vertex(50, yy, -100);
  vertex(0, 0, -100);
  vertex(100, 0, -100);
  vertex(100, 0, 0);
  vertex(50, yy, 0);
  vertex(0, 0, 0);
  vertex(100, 0, 0);
  vertex(0, 0, 0);
  vertex(0, 0, -100);
  vertex(50, yy, -100);
  //vertex(50, yy, 0); //remove for TBC
  endShape();

  //L(surfc);
  //R(surfc);
  //S(surfc);
  //T(surfc);
  //B(surfc);
  //D(surfc);
  //DL(surfc);
  //DR(surfc);
  //TBR(surfc);
  //TBL(surfc);
  TBC(surfc);
}

void L(color surfc) {
  int yy=ceil(sqrt(sq(50/(sin(PI/6))) - sq(50)));
  cyl(0, 0, 0, 0, 0, -100, 3, surfc);
  cyl(0, 0, -100, 50, yy, -100, 3, surfc);
  cyl(50, yy, -100, 50, yy, 0, 3, surfc);
  cyl(0, 0, 0, 50, yy, 0, 3, surfc);
  save("L.png");
}

void R(color surfc) {
  int yy=ceil(sqrt(sq(50/(sin(PI/6))) - sq(50)));
  cyl(50, yy, -100, 100, 0, -100, 3, surfc);
  cyl(50, yy, -100, 50, yy, 0, 3, surfc);
  cyl(50, yy, 0, 100, 0, 0, 3, surfc);
  cyl(100, 0, 0, 100, 0, -100, 3, surfc);
  save("R.png");
}

void S(color surfc) {
  int yy=ceil(sqrt(sq(50/(sin(PI/6))) - sq(50)));
  cyl(0, 0, 0, 0, 0, -100, 3, surfc);
  cyl(0, 0, -100, 50, yy, -100, 3, surfc);
  cyl(0, 0, 0, 50, yy, 0, 3, surfc);
  cyl(50, yy, -100, 100, 0, -100, 3, surfc);
  cyl(50, yy, 0, 100, 0, 0, 3, surfc);
  cyl(100, 0, 0, 100, 0, -100, 3, surfc);
  save("S.png");
}

void T(color surfc) {
  int yy=ceil(sqrt(sq(50/(sin(PI/6))) - sq(50)));
  cyl(0, 0, -100, 100, 0, -100, 3, surfc);
  cyl(50, yy, -100, 100, 0, -100, 3, surfc);
  cyl(0, 0, -100, 50, yy, -100, 3, surfc);
  save("T.png");
}

void B(color surfc) {
  int yy=ceil(sqrt(sq(50/(sin(PI/6))) - sq(50)));
  cyl(0, 0, 0, 100, 0, 0, 3, surfc);
  cyl(50, yy, 0, 100, 0, 0, 3, surfc);
  cyl(0, 0, 0, 50, yy, 0, 3, surfc);
  save("B.png");
}

void D(color surfc) {
  int yy=ceil(sqrt(sq(50/(sin(PI/6))) - sq(50)));
  cyl(0, 0, -100, 100, 0, -100, 3, surfc);
  cyl(100, 0, -100, 100, 0, 0, 3, surfc);
  cyl(0, 0, 0, 100, 0, 0, 3, surfc);
  cyl(0, 0, 0, 0, 0, -100, 3, surfc);
  save("D.png");
}

void DL(color surfc) {
  int yy=ceil(sqrt(sq(50/(sin(PI/6))) - sq(50)));
  cyl(0, 0, -100, 100, 0, -100, 3, surfc);
  cyl(100, 0, -100, 100, 0, 0, 3, surfc);
  cyl(0, 0, 0, 100, 0, 0, 3, surfc);
  cyl(0, 0, -100, 50, yy, -100, 3, surfc);
  cyl(50, yy, -100, 50, yy, 0, 3, surfc);
  cyl(0, 0, 0, 50, yy, 0, 3, surfc);
  save("DL.png");
}

void DR(color surfc) {
  int yy=ceil(sqrt(sq(50/(sin(PI/6))) - sq(50)));
  cyl(0, 0, -100, 100, 0, -100, 3, surfc);
  cyl(0, 0, 0, 100, 0, 0, 3, surfc);
  cyl(0, 0, 0, 0, 0, -100, 3, surfc);
  cyl(50, yy, -100, 100, 0, -100, 3, surfc);
  cyl(50, yy, -100, 50, yy, 0, 3, surfc);
  cyl(50, yy, 0, 100, 0, 0, 3, surfc);

  save("DR.png");
}

void TBR(color surfc) {
  int yy=ceil(sqrt(sq(50/(sin(PI/6))) - sq(50)));
  cyl(-1, 0, -100, -1, 0, 0, 3, surfc);
  cyl(8, 0, -100, 8, 0, 0, 3, surfc);
  cyl(-1, 0, -100, 8, 0, -100, 3, surfc);
  cyl(-1, 0, 0, 8, 0, 0, 3, surfc);
  save("TBR.png");
}

void TBL(color surfc) {
  int yy=ceil(sqrt(sq(50/(sin(PI/6))) - sq(50)));
  cyl(92, 0, -100, 92, 0, 0, 3, surfc);
  cyl(101, 0, -100, 101, 0, 0, 3, surfc);
  cyl(92, 0, -100, 101, 0, -100, 3, surfc);
  cyl(92, 0, 0, 101, 0, 0, 3, surfc);
  save("TBL.png");
}

void TBC(color surfc) {
  int yy=ceil(sqrt(sq(50/(sin(PI/6))) - sq(50)));
  cyl(45, yy, -103, 45, yy, 0, 3, surfc);
  cyl(55, yy, -103, 55, yy, 0, 3, surfc);
  cyl(42, yy, -103, 58, yy, -103, 3, surfc);
  cyl(45, yy, 0, 55, yy, 0, 3, surfc);
  save("TBC.png");
}

void cyl(int x1, int y1, int z1, int x2, int y2, int z2, int r, color colr) {
  int xx=x2-x1;
  int yy=y2-y1;
  int zz=z2-z1;
  int clength = ceil(sqrt(sq(xx) + sq(yy) + sq(zz)));
  float rota = atan(yy/(xx+0.0001));
  float rotb = PI/2 - atan(zz/(sqrt(sq(xx) + sq(yy))+0.0001));
  pushMatrix();
  translate(x1, y1, z1);
  pushMatrix();
  rotateZ(rota);
  pushMatrix();
  rotateY(rotb);
  noStroke();
  fill(colr);
  beginShape(TRIANGLE_STRIP);
  int sides = 80;
  float angle = 360 / sides;
  int flip = 0;
  for (int i = 0; i <= sides+15 ; i++) {
    float x = cos( radians( i * angle ) ) * r;
    float y = sin( radians( i * angle ) ) * r;
    flip = i % 2;
    vertex( x, y, flip*clength);
  }
  endShape();
  popMatrix();
  popMatrix();
  popMatrix();
}
