class Pantalla {
  //PImage image ...
  Boton boton [];
  Juego juego;
  int cantidadDeBotones = 3;
  Pantalla() {
    boton = new Boton [this.cantidadDeBotones];
    this.cargarBotones();
    juego = new Juego();
  }
  void dibujar(String estado) {
    if (estado == "setup") {
      push();
      fill(0);
      noStroke();
      rect(0, 0, width, height);
      boton[0].dibujar();
      pop();
    } else if (estado == "jugar") {
      push();
      fill(255);
      noStroke();
      rect(0, 0, width, height);
      juego.dibujar();
      pop();
    }
  }

  void mouseClicked() {
    for (int i = 0; i < this.cantidadDeBotones; i++) {

      boton[i].mouseClicked();
    }
  }
  void actualizar() {

    for (int i = 0; i < this.cantidadDeBotones; i++) {

      boton[i].actualizar();
    }
  }
  void cargarBotones() {

    for (int i = 0; i < this.cantidadDeBotones; i++) {

      boton[i] = new Boton(i);
    }
  }
}
