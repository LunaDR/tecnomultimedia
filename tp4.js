// LUNA DE RITO
// COMISION 5
// LINK: https://youtu.be/EegKJ9aIx_0

let pantalla = 0;
let posXJugadorUno, posYJugadorUno;
let posXJugadorDos, posYJugadorDos;
let velocidadJugadorUno, velocidadJugadorDos, velocidadGeneral, velocidadIncremento;
let posXPelota, posYPelota, tamPelota, velocidadXPelota, velocidadYPelota;
let contadorJugadorUno = 0;
let contadorJugadorDos = 0;

function setup() {
  createCanvas(windowWidth, windowHeight);
  posXJugadorUno = 20;
  posYJugadorUno = height/2;
  posXJugadorDos = windowWidth - 20;
  posYJugadorDos = height/2
    velocidadJugadorUno = 0;
  velocidadJugadorDos = 0;
  posXPelota = width/2;
  posYPelota = height/2;
  tamPelota = 20;
  velocidadXPelota = 0;
  velocidadYPelota = 0;
  velocidadGeneral = 4;
  velocidadIncremento = 1.1;
}


function draw() {
  background(0);
  if (pantalla === 0) {
    inicio();
  }
  if (pantalla === 1) {
    juego();
  }
}
function keyPressed() {
  if (key === 'w' || key === 'W') {
    velocidadJugadorUno = -velocidadGeneral;
  }
  if (key === 's' || key === 'S') {
    velocidadJugadorUno = velocidadGeneral;
  }
  if (keyCode === UP_ARROW) {
    velocidadJugadorDos = -velocidadGeneral;
  }
  if (keyCode === DOWN_ARROW) {
    velocidadJugadorDos = velocidadGeneral;
  }
  if (keyCode === ENTER) {
    velocidadXPelota = -velocidadGeneral;
    velocidadYPelota = -velocidadGeneral;
  }
}
function keyReleased() {
  if (key === 'w' || key === 's' || key === 'W' || key === 'S') {
    velocidadJugadorUno = 0;
  }
  if (keyCode === UP_ARROW || keyCode === DOWN_ARROW) {
    velocidadJugadorDos = 0;
  }
}
function mousePressed() {
  contadorJugadorUno = 0;
  contadorJugadorDos = 0;
  posXJugadorUno = 20;
  posYJugadorUno = height/2;
  posXJugadorDos = windowWidth - 20;
  posYJugadorDos = height/2
    velocidadJugadorUno = 0;
  velocidadJugadorDos = 0;
  posXPelota = width/2;
  posYPelota = height/2;
  velocidadXPelota = 0;
  velocidadYPelota = 0;
  pantalla = 0;
}
