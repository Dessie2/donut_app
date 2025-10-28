import 'package:donut_app/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
   DonutTab({super.key});
  //lista de donas para el parametro
  final List donutOnSale = [
    //doutFlavor, donutPrice, donutColor, donutImagePath, donutProvider
    ['Chocolate', '100', Colors.brown, 'lib/images/chocolate_donut.png', 'Starbucks'],
    ['Strawberry', '100', Colors.pink, 'lib/images/strawberry_donut.png', 'Starbucks'],
    ['IceCream', '100', Colors.yellow, 'lib/images/icecream_donut.png', 'Starbucks'],
    ['Grape', '100', Colors.purple, 'lib/images/grape_donut.png', 'Starbucks']
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      ///Se encarga de acomodar elementos dentro del grid
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      childAspectRatio: 1 / 1.45, //relacion de aspecto ancho/alto 
      ), //crossAxisCount numeros de columnas

      //lo que se construye en el grid (contenido)
      itemCount: donutOnSale.length, //cuantos elementos tendra
      itemBuilder: (context, index){
        return DonutTile( //le pasamos los elementos de la lista a la clase DonutTile
          donutFlavor: donutOnSale[index][0],
          donutPrice: donutOnSale[index][1],
          donutColor: donutOnSale[index][2],
          donutImagePath: donutOnSale[index][3],
          donutProvider: donutOnSale[index][4],
        );
      },
    );
  }
}