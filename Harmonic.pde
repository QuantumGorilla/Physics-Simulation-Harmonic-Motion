/**
 Para visualizar un solo movimiento, solo basta con comentar la linea de i.run() o s.run(). Si se quiere visualizar la onda dirigida hacia la izquierda comentar i.run().
 Si se visualizar la onda dirigida hacia la derecha comentar s.run().
 */

//Declaración de variables
Simple s = new Simple(new Motion(0, 0.1));
Simple i = new Simple(new Motion(0, -0.1));

/**
 Función que determina el tamaño de la ventana de visualización.
 También establece que vaya a 60 fps. En caso de que el procesador de n pc donde se use no pueda mantenerlo no será util el 
 llamado del metodo.
 */
void setup() {
  size(840, 460);
  frameRate(60); 
}

/*
Función que da inicio al dibujado de las ondas.
 */
void draw() {
  background(255);
  i.run();
  s.run();
}
