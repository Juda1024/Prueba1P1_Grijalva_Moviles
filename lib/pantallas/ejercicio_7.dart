
import 'package:flutter/material.dart';
import '../logicas/divisores.dart';

// Pantalla para mostrar los divisores de un número.
class Ejercicio7 extends StatefulWidget {
  const Ejercicio7({super.key});

  @override
  State<Ejercicio7> createState() => _Ejercicio7State();
}

class _Ejercicio7State extends State<Ejercicio7> {
  final entrada = TextEditingController();
  String resultado = '';

  void calcular() {
    int? numero = int.tryParse(entrada.text.trim());

    // Valida que el número sea positivo.
    setState(() {
      if (numero == null || numero <= 0) {
        resultado = 'Ingrese un entero positivo.';
      } else {
        resultado = calcularDivisores(numero);
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
      appBar: AppBar(title: const Text('Ejercicio 7')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text('Ingrese un número para conocer sus divisores:'),

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
            child: const Text('Calcular divisores'),
          ),

          const SizedBox(height: 20),

          Text(resultado, style: const TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
