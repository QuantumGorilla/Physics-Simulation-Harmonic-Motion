/**
 Para visualizar un solo movimiento, solo basta con comentar la linea de i.run() o s.run(). Si se quiere visualizar la onda dirigida hacia la izquierda comentar i.run().
 Si se visualizar la onda dirigida hacia la derecha comentar s.run().
 */

//Declaración de variables
Simple s = new Simple(new Motion(0, 0.1));
Simple i = new Simple(new Motion(0, -0.1));

/**
 Función que determina el tamaño de la ventana de visualización.
 */
void setup() {
  size(840, 460);
  frameRate(60); //Mejorar los frames
}

/*
Función que da inicio al dibujado de las ondas.
 */
void draw() {
  background(255);
  i.run();
  s.run();
}
