
import 'package:flutter/material.dart';
import '../logicas/inversion.dart';

// StatefulWidget permite actualizar el resultado.
class Ejercicio8 extends StatefulWidget {
  const Ejercicio8({super.key});

  @override
  State<Ejercicio8> createState() => _Ejercicio8State();
}

class _Ejercicio8State extends State<Ejercicio8> {
  final entrada = TextEditingController();
  String resultado = '';

  void calcular() {
    int? numero = int.tryParse(entrada.text.trim());

    // Valida que sea un entero positivo.
    setState(() {
      if (numero == null || numero <= 0) {
        resultado = 'Ingrese un entero positivo.';
      } else {
        resultado = 'Número invertido: ${invertirNumero(numero)}';
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
      appBar: AppBar(title: const Text('Ejercicio 8')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text('Ingrese un número para invertir sus dígitos:'),

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
            child: const Text('Invertir'),
          ),

          const SizedBox(height: 20),

          Text(resultado, style: const TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
