class Juego {
  Obstaculo [] gotas;
  Obstaculo [] flores;

  int cantidadDeObstaculos = 20;
  Juego() {

    gotas = new Obstaculo[this.cantidadDeObstaculos];
    flores = new Obstaculo[this.cantidadDeObstaculos];

    for (int i = 0; i < this.cantidadDeObstaculos; i++) {
      this.gotas[i] = new Obstaculo("gotas");
    }
    for (int i = 0; i < this.cantidadDeObstaculos; i++) {
      this.flores[i] = new Obstaculo("flores");
    }
  }

  void dibujar() {
    this.dibujarObstaculos();
  }
  void dibujarObstaculos() {
    for (int i = 0; i < this.cantidadDeObstaculos; i++) {
      this.gotas[i].dibujar();
    }
    for (int i = 0; i < this.cantidadDeObstaculos; i++) {
      this.flores[i].dibujar();
    }
  }
}
