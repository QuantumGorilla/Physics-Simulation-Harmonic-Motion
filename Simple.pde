class Simple {

  private Motion motions; //Movimientos
  private float angle; //Angulo

  /**
   Constructor de la clase Simple
   */
  Simple(Motion m) {
    motions = m;
  }

  /**
   Función necesaria para optimizar el dibujado de las ondas
   */
  void run() {
    update(this.motions);
    drawMe(this.motions);
    reverseDrawMe(this.motions);
  }


  /**
   Función que sirve para actualizar los valores del angulo y del angulo de inicio 
   */
  void update(Motion m) {
    m.updateStartAngle(0.01);
    angle = m.getStartAngle();
  }


  /**
   Función que dibuja a partir del angulo de inicio. Dibuja una onda dirigida hacía la derecha.
   Hay diferentes figuras por las cuales observar el movimiento. Particularmente me gusta el Ellipse seguido del line.
   */
  void drawMe(Motion m) {
    for (int x = 0; x <= width; x += 24) {
      float y = map(sin(angle), -1, 1, 0, height);
      stroke(0);
      //fill(0, 50);
      fill(50);
      ellipse(x, y, 48, 48);
      //line(x,y,48,48);
      //rect(x, y, 48, 48);
      //triangle(x, y, angle, angle, 48, 48);
      angle += m.getAngleVel();
    }
  }

  /**
   Funcion inversa del metodo DrawMe(Motion m). Dibuja una onda dirigida hacia la izquierda
   */
  void reverseDrawMe(Motion m) {
    for (int x = width; x >= 0; x -= 24) {
      float y = map(sin(angle), 1, -1, 0, height);
      stroke(0);
      //fill(0,0);
      fill(0);
      ellipse(x, y, 48, 48);
      //line(x,y,48,48);
      //rect(x, y, 48, 48);
      //triangle(x, y, angle, angle, 48, 48);
      angle -= m.getAngleVel();
    }
  }
}
