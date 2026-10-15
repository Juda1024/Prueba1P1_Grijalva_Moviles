
import 'package:flutter/material.dart';
import 'pantallas/menu_principal.dart';
import 'pantallas/ejercicio_7.dart';
import 'pantallas/ejercicio_8.dart';
import 'pantallas/ejercicio_9.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grupo 2 - Ejercicios',

      // Front
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
        ),
      ),

      // Rutas para navegar entre las pantallas.
      initialRoute: '/',
      routes: {
        '/': (context) => const MenuPrincipal(),
        '/ejercicio7': (context) => const Ejercicio7(),
        '/ejercicio8': (context) => const Ejercicio8(),
        '/ejercicio9': (context) => const Ejercicio9(),
      },
    );
  }
}
