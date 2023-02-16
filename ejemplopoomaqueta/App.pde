class App {

  //Propiedades
  Pantalla pantalla;
  String estado = "setup";

  //Constructor:

  App() {
    pantalla = new Pantalla();
  }

  //Métodos
  void mouseClicked() {
    pantalla.mouseClicked();
  }
  void actualizar() {
    pantalla.actualizar();
  }

  void dibujar() {
    
    pantalla.dibujar(this.estado);
  }
}
