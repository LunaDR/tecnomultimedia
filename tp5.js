//LUNA DE RITO
//COMISION 5
//LINK: https://youtu.be/MnIC_xMPfqA


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
