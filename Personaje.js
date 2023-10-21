class Personaje {

  constructor() {
    this.x = 50;
    this.y = height-100;
    this.tam = 100;
    this.img = loadImage ("assets/hanselygretel.png");
    this.velPersonajeX = 0;
    this.velPersonajeY = 0;
    this.vel = 5;
  }

  actualizar () {
    this.dibujar();
    this.mover();
  }

  dibujar() {
    fill(0);
    ellipse(this.x, this.y, this.tam, this.tam);
    push();
    imageMode(CENTER);
    image (this.img, this.x, this.y);
    pop();
  }

  mover() {
    //la igualo a velocidad cero para poder modificarla en eventos con otra variable
    this.x += this.velPersonajeX;
    this.y += this.velPersonajeY;
  }

  keyPressed() {
    if (key === 'w' || key === 'W') {
      this.velPersonajeY -= this.vel;
    }
    if (key === 's' || key === 'S') {
      this.velPersonajeY += this.vel;
    }
    if (key === 'a' || key === 'A') {
      this.velPersonajeX -= this.vel;
    }
    if (key === 'd' || key === 'D') {
      this.velPersonajeX += this.vel;
    }
  }
  keyReleased() {
    if (key === 'w' || key === 'W') {
      this.velPersonajeY = 0;
    }
    if (key === 's' || key === 'S') {
      this.velPersonajeY = 0;
    }
    if (key === 'a' || key === 'A') {
      this.velPersonajeX = 0;
    }
    if (key === 'd' || key === 'D') {
      this.velPersonajeX = 0;
    }
  }
}
