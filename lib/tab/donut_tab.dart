import 'package:donut_app/utils/donut_tile.dart'; // Importa el widget DonutTile para mostrar cada dona
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
   DonutTab({super.key});

  // Lista de donas para pasar como parámetros al widget DonutTile
  final List donutOnSale = [
    // donutFlavor, donutPrice, donutColor, donutImagePath, donutProvider
    ['Chocolate', '100', Colors.brown, 'lib/images/chocolate_donut.png', 'Starbucks'],
    ['Strawberry', '100', Colors.pink, 'lib/images/strawberry_donut.png', 'Starbucks'],
    ['IceCream', '100', Colors.yellow, 'lib/images/icecream_donut.png', 'Starbucks'],
    ['Grape', '100', Colors.purple, 'lib/images/grape_donut.png', 'Starbucks']
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      /// Se encarga de construir una cuadrícula para mostrar los elementos
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Cantidad de columnas en la cuadrícula
        childAspectRatio: 1 / 1.45, // Relación ancho/alto de cada elemento
      ), 

      // Cantidad de elementos que tendrá el grid
      itemCount: donutOnSale.length, 

      // builder = crea cada elemento dinámicamente
      itemBuilder: (context, index){
        return DonutTile( // Enviamos los datos de la lista a la clase DonutTile
          donutFlavor: donutOnSale[index][0],   // Sabor
          donutPrice: donutOnSale[index][1],   // Precio
          donutColor: donutOnSale[index][2],   // Color
          donutImagePath: donutOnSale[index][3], // Imagen
          donutProvider: donutOnSale[index][4], // Tienda/proveedor
        );
      },
    );
  }
}
