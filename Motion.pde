class Motion {

  private float startAngle; //Angulo de inicio
  private float angleVel; //Velocidad del angulo

  /**
   Constructor de la clase Motion
   */
  Motion(float startAngle, float angleVel) {
    this.startAngle = startAngle;
    this.angleVel = angleVel;
  }

  /**
   Función para obtener el angulo de inicio.
   Retorna startAngle, angulo de inicio
   */
  public float getStartAngle() {
    return startAngle;
  }

  /**
   Función para obtener la velocidad del angulo.
   Retorna angleVel, velocidad del angulo
   */
  public float getAngleVel() {
    return angleVel;
  }

  /**
   Función que actualiza el angulo de inicio sumandole 0.01 al angulo inicial de 0.1 y (-0.1) respectivamente.
   */
  public void updateStartAngle(float a) {
    this.startAngle += a;
  }
}
