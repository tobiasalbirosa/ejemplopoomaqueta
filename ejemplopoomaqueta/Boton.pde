class Boton {

  float x, y, tam;
  color relleno, colorDeTexto, rellenoHover, colorDeTextoHover;
  boolean hover;
  String texto;
  int id;

  Boton(int id) {

    textAlign(CENTER);
    this.id = id;
  }

  void dibujar() {

    if (id == 0) {
      push();
      this.relleno = 255;
      this.x = width/2;
      this.y = height/3;
      this.tam = height/10;
      this.texto = "Jugar";
      if (this.hover) {
        this.relleno = 0;
        this.colorDeTexto = 255;
      } else {
        this.relleno = 255;
        this.colorDeTexto = 0;
      }
      fill(this.relleno);
      rect(this.x, this.y, this.tam, this.tam);
      fill(this.colorDeTexto);
      text(this.texto, this.x + this.tam/2, this.y+ this.tam/2);

      pop();
    }

    if (id == 1) {
    }
  }
  void mouseClicked() {
    if (this.hover == true) {
      this.accion(this.id);
    }
  }
  //LOGICA DE MOUSE OVER
  void actualizar() {

    if (mouseX > this.x 
      && mouseY > this.y
      && mouseX < this.x + this.tam 
      && mouseY < this.y + this.tam) {
      this.hover = true;
    } else {
      this.hover = false;
    }
  }

  // DEPENDIENDO DEL ID (pasado por parametro)
  // DEL BOTON, HACEMOS UNA COSA U OTRA
  void accion(int id) {
    if (id == 0) {
      app.estado = "jugar";
    }
  }
}
