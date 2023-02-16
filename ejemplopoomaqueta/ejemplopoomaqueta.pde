App app;

void setup() {
  size(400, 400);
  app = new App();
}

void draw() {

  app.actualizar();
  app.dibujar();
}

void mouseClicked() {
  app.mouseClicked();
}

void keyPressed() {
 // app.keyPressed();
}
