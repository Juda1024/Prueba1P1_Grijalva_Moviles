
// Encuentra todos los divisores de un entero positivo.
String calcularDivisores(int numero) {
  List<int> divisores = [];

  // Probamos todos los números desde 1 hasta el ingresado.
  for (int i = 1; i <= numero; i++) {

    // Si el residuo es cero, i es divisor.
    if (numero % i == 0) {
      divisores.add(i);
    }
  }

  // La longitud de la lista indica cuántos divisores hay.
  return 'Divisores: ${divisores.join(", ")}\n'
      'Cantidad de divisores: ${divisores.length}';
}
