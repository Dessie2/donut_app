import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  const BurgerTab({super.key}); // Constructor de la clase con super key para identificar el widget

  @override
  Widget build(BuildContext context) {
    return const Center( // Centra el contenido en la pantalla
      child: Text('Burger Tab') // Texto que se muestra en el centro
    );
  }
}
