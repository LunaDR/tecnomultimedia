function inicio() {
  fill(255);
  textSize(100);
  textAlign(CENTER);
  text("PONG!", width/2, height/3-20);
  push();
  textSize(20);
  text("Creador: Allan Alcorn", width/2, height/3+30);
  text("Recreado por: Luna De Rito - COM. 5 TecnoMultimedia 1", width/2, height/3+55);
  text("Jugador uno (izq.) se controla con las teclas w y s", width/2, height/2);
  text("Jugador dos (der.) se controla con las flechas arriba y abajo", width/2, height/2+30);
  text("Presiona -ENTER- para que la pelota se mueva", width/2, height/2+60);
  text("El primero en llegar a 3 puntos gana!", width/2, height/2+200);
  pop();
  botonesRect( width/2-50, height/2+100, 100, 50, 1);
}
function juego() {
  //linea centro y estilo
  push();
  stroke(255);
  line(width/2, 0, width/2, height);
  pop();
  push();
  rectMode(CENTER);
  //jugador uno
  rect(posXJugadorUno, posYJugadorUno, 20, 90);
  //jugador dos
  rect(posXJugadorDos, posYJugadorDos, 20, 90);
  //pelota
  ellipse(posXPelota, posYPelota, tamPelota, tamPelota);
  pop();
  //puntajes
  push();
  textSize(80);
  fill(255);
  text(contadorJugadorUno, width/4, height/4);
  text(contadorJugadorDos, width/1.5, height/4);
  pop();
  //movimiento jugadores
  posYJugadorUno += velocidadJugadorUno;
  posYJugadorDos += velocidadJugadorDos;
  //limitar movimiento jugadores
  posYJugadorUno = constrain(posYJugadorUno, 0+45, height-45);
  posYJugadorDos = constrain(posYJugadorDos, 0+45, height-45);
  //movimiento pelota
  posXPelota += velocidadXPelota;
  posYPelota += velocidadYPelota;
  //limitar pelota
  if (posYPelota+tamPelota/2 >= height || posYPelota-tamPelota/2 <= 0) {
    velocidadYPelota *= -1;
  }
  //colisión jugador uno
  if (posXPelota-tamPelota/2 <= posXJugadorUno+10 && posYPelota >= posYJugadorUno-45 && posYPelota <= posYJugadorUno+45) {
    velocidadXPelota *= -velocidadIncremento;
  }
  //colisión jugador dos
  if (posXPelota+tamPelota/2 >= posXJugadorDos-10 && posYPelota >= posYJugadorDos-45 && posYPelota <= posYJugadorDos+45) {
    velocidadXPelota *= -velocidadIncremento;
  }
  //puntaje jugador dos
  if (posXPelota+tamPelota/2 <= 0) {
    contadorJugadorDos+=1;
    posXPelota = width/2;
    posYPelota = height/2;
    velocidadXPelota = velocidadGeneral;
    velocidadYPelota = -velocidadGeneral;
  }
  //puntaje jugador uno
  if (posXPelota-tamPelota/2 > width) {
    contadorJugadorUno+=1;
    posXPelota = width/2;
    posYPelota = height/2;
    velocidadXPelota = -velocidadGeneral;
    velocidadYPelota = velocidadGeneral;
  }
  //gana jugador uno
  if (contadorJugadorUno >= 3) {
    push();
    textAlign(CENTER);
    textSize(50);
    fill(237, 237, 115);
    text("GANA JUGADOR UNO :D", width/2, height/2);
    textSize(20);
    text("Haz click para reiniciar", width/2, height/2+100);
    pop();
    velocidadXPelota = 0;
    velocidadYPelota = 0;
  }
  //gana jugador dos
  if (contadorJugadorDos >= 3) {
    push();
    textAlign(CENTER);
    textSize(50);
    fill(237, 237, 115);
    text("GANA JUGADOR DOS :D", width/2, height/2);
    textSize(20);
    text("Haz click para reiniciar", width/2, height/2+100);
    pop();
    velocidadXPelota = 0;
    velocidadYPelota = 0;
  }
}
function botonesRect( x, y, ancho, alto, siguiente, texto, posX) {
  if (mouseX>x && mouseX<x+ancho && mouseY>y && mouseY<y+alto && mouseIsPressed ===true) {
    pantalla = siguiente;
  }
  push();
  rect(x, y, ancho, alto);
  fill(0);
  textSize(20);
  text( "Jugar", width/2, y+30);
  pop();
}
