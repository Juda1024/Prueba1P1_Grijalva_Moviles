
// Invierte los dígitos de un número entero positivo.
int invertirNumero(int numero) {
  int invertido = 0;

  while (numero > 0) {
    // % 10 obtiene el último dígito.
    int digito = numero % 10;

    // Desplazamos el resultado y agregamos el dígito.
    invertido = invertido * 10 + digito;

    // ~/ 10 elimina el último dígito del número.
    numero = numero ~/ 10;
  }

  return invertido;
}
