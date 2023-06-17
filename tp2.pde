/*
 LUNA DE RITO
 COMISION 5
 LINK:  https://www.youtube.com/watch?v=w54YGbjh5w8
 */
PImage imagen;
float color1 = 255;
float detalle = 28;
float tam1 = 10;
void setup() {
  size(800, 400);
  imagen = loadImage ("scintillatinggrid.png");
  imagen.resize(400, 400);
}
void draw() {
  background(0);
  image (imagen, 0, 0);
  translate(400, 0);
  lineas(0, 400);
  circulos();
}
void lineas(int x, int y) {
  for (int i = 7; i <= width; i += 43) {
    for (int j = 7; j <=height; j += 43) {
      stroke(180, detalle);
      strokeWeight(7);
      line(i, x, i, y);
      line (x, j, y, j);
    }
  }
}
void circulos() {
  for (int i = 8; i <= width; i += 43) {
    for (int j = 8; j <=height; j += 43) {
      fill(color1);
      circle(i, j, tam1);
    }
  }
}
color colorUno(float C) {
  color c;
  c=int(random(C));
  return c;
}
color colorDos(float B) {
  color b;
  b=int(random(B));
  return b;
}
void keyPressed() {
  if (key == 'f') {
    color1 = colorUno(255);
  }
  if (key == 'g') {
    tam1 = random (0, 10);
  }
  if (key == ' ') {
    detalle = colorDos(255);
  }
}
void mousePressed() {
  color1 = 255;
  tam1 = 10;
  detalle = 28;
}
