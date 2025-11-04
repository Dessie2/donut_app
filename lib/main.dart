import 'package:flutter/material.dart';
import 'screens/HomePage.dart';

// Función principal donde inicia la ejecución de la app
void main() {
  runApp(const MyApp()); // runApp carga el widget principal (MyApp)
}

// Clase principal de la aplicación
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Este widget es la raíz de la aplicación
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Oculta la cinta de debug en la esquina
      title: 'Flutter Demo', // Título de la app
      theme: ThemeData(
        // Tema general de la aplicación
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Homepage(), // Pantalla inicial de la app
    );
  }
}
