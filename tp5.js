let juego

  function setup() {
  createCanvas(windowWidth, windowHeight);
  juego = new Juego ();
}


function draw() {
  juego.actualizar();
}

function keyPressed() {
  juego.personaje.keyPressed();
}

function keyReleased() {
  juego.personaje.keyReleased();
}
