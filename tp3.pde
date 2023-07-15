// LUNA DE RITO
// COMISION 5
// LINK: https://youtu.be/dWjaZyWTb7c
PImage [] imagen;
String [] textos;
PFont estiloTexto;
int cant = 12;
int pantalla = 0;
boolean on;
void setup() {
  size(600, 600);
  imagen = new PImage [cant];
  for (int i = 0; i < cant; i ++) {
    imagen [i] = loadImage(i + ".jpeg");
  }
  textos = loadStrings("textos.txt");
  estiloTexto = loadFont("PalatinoLinotype-Bold-48.vlw");
  textFont(estiloTexto);
}
void draw() {
  image(imagen[pantalla], 0, 0);
  fill(178, 5, 5);
  textSize(20);

  if (pantalla == 0) {
    botonRect(250, 250, 100, 50, 2, "Inicio", 275);
    botonRect(250, 450, 100, 50, 1, "Créditos", 263);
    text(textos[pantalla], 420, 170);
  } else if (pantalla == 2) {
    rectanguloFondo (20, 10, 560, 170);
    text(textos[pantalla], 30, 20, 550, 200);
    botonRect(450, 530, 130, 50, 3, "Siguiente", 475);
    botonRect(30, 530, 130, 50, 0, "Anterior", 55);
  } else if (pantalla == 3) {
    text(textos[pantalla], 30, 20, 550, 250);
    botonRect(450, 530, 130, 50, 4, "Siguiente", 475);
    botonRect(30, 530, 130, 50, 2, "Anterior", 55);
  } else if (pantalla == 4) {
    rectanguloFondo (20, 10, 560, 100);
    text(textos[pantalla], 30, 20, 550, 250);
    botonRect(30, 530, 130, 50, 3, "Anterior", 55);
    botonCirc (200, 300, 30, 5, "1");
    botonCirc (400, 300, 30, 6, "2");
  } else if (pantalla == 6) {
    rectanguloFondo (20, 10, 560, 160);
    text(textos[pantalla], 30, 20, 550, 250);
    botonRect(450, 530, 130, 50, 7, "Siguiente", 475);
    botonRect(30, 530, 130, 50, 4, "Anterior", 55);
  } else if (pantalla == 7) {
    rectanguloFondo (20, 10, 560, 140);
    text(textos[pantalla], 30, 20, 550, 250);
    botonRect(450, 530, 130, 50, 8, "Siguiente", 475);
    botonRect(30, 530, 130, 50, 6, "Anterior", 55);
  } else if (pantalla == 8) {
    rectanguloFondo (20, 10, 560, 140);
    text(textos[pantalla], 30, 20, 550, 250);
    botonRect(450, 530, 130, 50, 9, "Siguiente", 475);
    botonRect(30, 530, 130, 50, 7, "Anterior", 55);
  } else if (pantalla == 9) {
    text(textos[pantalla], 30, 20, 550, 250);
    botonRect(30, 530, 130, 50, 8, "Anterior", 55);
    botonCirc (200, 300, 30, 10, "1");
    botonCirc (400, 300, 30, 11, "2");
  } else if (pantalla == 11) {
    rectanguloFondo (20, 10, 560, 150);
    text(textos[pantalla], 30, 20, 550, 250);
    botonRect(450, 530, 130, 50, 0, "Reinicio", 475);
    botonRect(30, 530, 130, 50, 9, "Anterior", 55);
  }
  if (pantalla == 1) {
    rectanguloFondo (90, 240, 400, 70);
    botonRect(250, 500, 100, 50, 0, "Inicio", 275);
    text(textos[pantalla], 100, 250, 400, 400);
  }
  if (pantalla == 5) {
    text(textos[pantalla], 30, 20, 550, 250);
    botonRect(30, 530, 130, 50, 4, "Anterior", 55);
    botonRect(450, 530, 130, 50, 0, "Reinicio", 475);
  }
  if (pantalla == 10) {
    rectanguloFondo (20, 10, 560, 80);
    text(textos[pantalla], 30, 20, 550, 250);
    botonRect(30, 530, 130, 50, 9, "Anterior", 55);
    botonRect(450, 530, 130, 50, 0, "Reinicio", 475);
  }
}
void botonRect (float x, float y, float ancho, float alto, int siguiente, String texto, int posX) {
  if (mousePressed && on) {
    if (mouseX>x && mouseX<x+ancho && mouseY>y && mouseY<y+alto) {
      pantalla = siguiente;
      on = false;
    }
  }
  push();
  rect(x, y, ancho, alto);
  fill(0);
  textSize(20);
  text(texto, posX, y+32);
  pop();
}
void botonCirc (int x, int y, int tam, int siguiente, String opcion) {
  if (mousePressed && on) {
    if (zonaBoton (x, y, tam)) {
      pantalla = siguiente;
      on = false;
    }
  }
  push();
  ellipse(x, y, tam, tam);
  fill(0);
  textSize(20);
  text(opcion, x-4, y+6);
  pop();
}
void mouseMoved() {
  on = true;
}
boolean zonaBoton (int x, int y, int tam) {
  return dist(mouseX, mouseY, x, y) < tam/2;
}
void rectanguloFondo (int x, int y, int ancho, int alto) {
  push();
  fill(0, 200);
  noStroke();
  rect(x, y, ancho, alto);
  pop();
}
