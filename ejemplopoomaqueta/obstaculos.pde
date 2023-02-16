class Obstaculo {

  int x, y, tam, vel;
  String tipo;

  Obstaculo(String tipo) {
    this.tipo = tipo;
    this.x = int(random(width));
    this.y = -int(random(0, height));
    this.tam =int(random(width/80, width/40));
    this.vel = 3;
  }

  void actualizar() {
    this.y += this.vel;
    if (this.y >= height) {
      this.reiniciar();
    }
  }

  void dibujar() {
    this.actualizar();
    push();
    stroke(1);
    //fill(0);
    if (this.tipo == "gotas") {
      circle(this.x, this.y, this.tam);
    } else {

      rect(this.x, this.y, this.tam, this.tam);
    }
    pop();
  }

  void reiniciar() {
    this.x = int(random(width));
    this.y = -int(random(0, height));
    this.tam =int(random(width/80, width/40));
    this.vel = 3;
  }
}
