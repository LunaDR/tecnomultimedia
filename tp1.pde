PFont estiloInicio, estiloUno, estiloDos, estiloTres, estiloCuatro;
PImage p1, p2, p3, p4;

int radio = 100;
int contador = 0;
int colorFondo;
int pantalla = 0;
int a, b, c, d;

float movimiento, movimiento1;
float posX1, posY1;
float posX2, posY2;
float posX3;
float alpha, alpha2;
float tinte;
float medidaText;


boolean botonInicio = false;
boolean botonFinal = false;


void setup() {
  size (640, 480);
  background(colorFondo);

  colorFondo = 40;
  estiloInicio = loadFont("MicrosoftNewTaiLue-25.vlw"); //letra boton inicio


  //para pantalla uno
  p1 = loadImage("p1.jpg"); // imagen uno
  posX1 = -80;
  posY1 = 0;
  posX2 = 640;
  movimiento = 3;
  estiloUno = loadFont ("Arial-Black-25.vlw");//letra pantalla uno
  alpha = 0;

  //para pantalla dos
  posY2 = 480;
  p2 = loadImage("p2.jpg"); //imagen dos
  estiloDos = loadFont("Constantia-48.vlw");
  tinte = 50;

  //para pantalla tres
  posX3 = -900;
  p3 = loadImage("p3.jpg"); //imagen tres
  estiloTres = loadFont("Corbel-48.vlw");
  movimiento1 = 3;
  medidaText = 35;
  alpha2 = 255;

  //para pantalla cuatro
  p4 = loadImage ("p4.jpg"); //imagen cuatro
  estiloCuatro = loadFont("Georgia-BoldItalic-48.vlw");
  a = 420;
  b = 400;
  c = 200;
  d = 50;
}

void draw() {
  println("contador", contador);

  if (pantalla == 0) {

    noStroke();
    fill(200, 10);
    circle(width/2, height/2, radio);
    fill(0);
    textAlign(CENTER, LEFT);
    textSize(25);
    textFont(estiloInicio);
    text("Inicio", width/2, height/1.95);
  }

  //pantalla uno
  if (pantalla == 1) {

    contador ++;
    background(colorFondo);
    image (p1, posX2, posY1);
    p1.resize(0, 480);
    posX2 -= movimiento;
  }
  if (posX2 == posX1) {
    movimiento = 0;
  }
  if (contador>=240) {

    //texto pantalla uno
    fill(colorFondo-10);
    noStroke();
    rect(75, 64, 250, 60);
    textFont(estiloUno);
    fill(240, 227, 90, alpha++);
    text("Pinzas y alicates", 200, 100);

    stroke(240, 227, 90, alpha++);
    strokeWeight(6);
    line(90, 110, 310, 110);

    text("Al contrario de lo que la gente puede pensar, las pinzas y los alicates no son la misma herramienta.", 20, 350, 600, 320);
  }

  //pantalla dos
  if (contador>=600) {
    background(colorFondo, tinte/10);
    tint(255, tinte++);
    image (p2, 0, 0);

    //texto pantalla dos
    textFont(estiloDos);
    textSize(medidaText);
    text("Los alicates sirven para cortar, sujetar, ajustar, doblar, aflojar, pelar cables, etc.  Su función es parecida a la de las pinzas pero existen diferencias: Los alicates pueden cortar, las pinzas no.", 20, posY2, 600, 320);
    posY2 --;
  }

  //pantalla tres
  if (contador>=1350) {
    contador ++;

    image (p3, posX3, 0);
    posX3 += movimiento1;
  }

  if (posX3 == -150) {

    movimiento1 = 0;


    //texto pantalla tres
    fill(240, 227, 90, alpha2--);
    textFont(estiloTres);
    textSize(medidaText);
    text("La pinza es una herramienta manual que sirve para agarrar o sostener distintos tipos de materiales gracias a su diseño.", 30, 150, 550, 400);
  }
  //pantalla cuatro
  if (contador>=2400) {

    image (p4, 0, 0);
    fill(255, 250, 80);
    textSize(50);
    textFont(estiloCuatro);
    text("¡Gracias por ver!", 330, 250);

    fill(50);
    strokeWeight(3);
    rect(a, b, c, d);

    fill(240, 227, 90);
    textSize(25);
    text("Ver de nuevo", 520, 435);
  }
}


void mousePressed() {

  //boton de inicio
  if (dist(mouseX, mouseY, width/2, height/2) < radio/2) {
    botonInicio = true;
    pantalla = 1;
  }
  if (mouseX>a && mouseX<a+c && mouseY>b && mouseY<b+d) {
    botonFinal = true;
   // contador = 0;
    pantalla = 0;
  }
}
