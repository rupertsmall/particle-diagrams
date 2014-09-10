void setup() {

  size(400, 400, OPENGL); 
  background(255);
  //lights();
  camera(150, 100, -110, 0, 0, 0, 0, 0, 1);
  smooth(8);
}

void draw() {
  color surfc = color(0,0,0);
  noFill();
  stroke(0);
  box(100);
  translate(50,50,50);

  cyl(2,-7,-2,2,-7,-102, 3, surfc);
  cyl(0,0,0,0,0,-100, 3, surfc);
  cyl(0,0,0,2,-7,-2, 3, surfc);
  cyl(0,0,-98, 2,-7,-100, 3, surfc);
  save("delta_L.png");

//  cyl(-100,-100,-100,0,-100,-100, 3, surfc);
//  cyl(0,-100,-100,0,0,-100, 3, surfc);
//  cyl(-100,-100,-100,-100,0,-100, 3, surfc);
//  cyl(-100,0,-100,0,0,-100, 3, surfc);
//  save("k_top.png");

//  cyl(0,0,0,0,0,-100, 3, surfc);
//  cyl(-100,0,0,0,0,0, 3, surfc);
//  cyl(-100,0,-100,0,0,-100, 3, surfc);
//  cyl(-100,0,0,-100,0,-100, 3, surfc);
//  save("alpha_F.png");

//  cyl(0,-100,0,0,-100,-100, 3, surfc);
//  cyl(0,-100,0,0,0,0, 3, surfc);
//  cyl(0,-100,-100,0,0,-100, 3, surfc);
//  cyl(0,0,0,0,0,-100, 3, surfc);
//  save("alpha_L.png");

//  cyl(0,-100,0,0,-100,-100, 3, surfc);
//  cyl(0,-100,0,0,0,0, 3, surfc);
//  cyl(0,-100,-100,0,0,-100, 3, surfc);
//  cyl(-100,0,0,0,0,0, 3, surfc);
//  cyl(-100,0,-100,0,0,-100, 3, surfc);
//  cyl(-100,0,0,-100,0,-100, 3, surfc);
//  save("gamma_L.png");
  
//  cyl(-100,-100,0,-100,-100,-100, 3, surfc);
//  cyl(0,-100,0,0,-100,-100, 3, surfc);
//  cyl(0,-100,0,0,0,0, 3, surfc);
//  cyl(0,-100,-100,0,0,-100, 3, surfc);
//  cyl(-100,-100,-100,-100,0,-100, 3, surfc);
//  cyl(-100,-100,0,-100,0,0, 3, surfc);
//  cyl(-100,0,0,0,0,0, 3, surfc);
//  cyl(-100,0,-100,0,0,-100, 3, surfc);
//  save("beta.png");

  noLoop();
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
