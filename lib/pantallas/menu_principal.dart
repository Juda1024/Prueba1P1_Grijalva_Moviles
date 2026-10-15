
import 'package:flutter/material.dart';

// Menú principal
class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grupo 2 - Ejercicios'),
        backgroundColor: Colors.indigo.shade100,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Menú de ejercicios',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          // Abrir la pantalla de cada ejercicio.
          Card(
            child: ListTile(
              leading: const Icon(Icons.swap_horiz),
              title: const Text('Ejercicio 8'),
              subtitle: const Text('Inversión de un número'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () =>
                  Navigator.pushNamed(context, '/ejercicio8'),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.add_circle_outline),
              title: const Text('Ejercicio 9'),
              subtitle: const Text('Suma de dígitos'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () =>
                  Navigator.pushNamed(context, '/ejercicio9'),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.calculate),
              title: const Text('Ejercicio 7'),
              subtitle: const Text('Divisores de un número'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () =>
                  Navigator.pushNamed(context, '/ejercicio7'),
            ),
          ),
        ],
      ),
    );
  }
}
