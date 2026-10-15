
// Suma los dígitos e indica si el resultado es par o impar.
String sumarDigitos(int numero) {
  int suma = 0;

  while (numero > 0) {
    // Extraemos el último dígito y lo acumulamos.
    suma = suma + numero % 10;

    // Eliminamos el dígito que ya sumamos.
    numero = numero ~/ 10;
  }

  // Un número es par si al dividir entre 2 el residuo es 0.
  String tipo = suma % 2 == 0 ? 'PAR' : 'IMPAR';

  return 'Suma de dígitos: $suma\nEl resultado es $tipo';
}
