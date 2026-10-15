
import 'package:flutter/material.dart';
import '../logicas/suma_digitos.dart';

// Pantalla para calcular la suma de dígitos.
class Ejercicio9 extends StatefulWidget {
  const Ejercicio9({super.key});

  @override
  State<Ejercicio9> createState() => _Ejercicio9State();
}

class _Ejercicio9State extends State<Ejercicio9> {
  final entrada = TextEditingController();
  String resultado = '';

  void calcular() {
    int? numero = int.tryParse(entrada.text.trim());

    // valida la entrada
    setState(() {
      if (numero == null || numero <= 0) {
        resultado = 'Ingrese un entero positivo.';
      } else {
        resultado = sumarDigitos(numero);
      }
    });
  }

  @override
  void dispose() {
    entrada.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejercicio 9')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text('Ingrese un número para sumar sus dígitos:'),

          const SizedBox(height: 15),

          TextField(
            controller: entrada,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Número',
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: calcular,
            child: const Text('Sumar dígitos'),
          ),

          const SizedBox(height: 20),

          Text(resultado, style: const TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
