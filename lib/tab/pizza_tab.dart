import 'package:donut_app/utils/pizza_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  PizzaTab({super.key});

  final List pizzaOnSale = [
    //pizzaFlavor, pizzaPrice, pizzaColor, pizzaImagePath, pizzaProvider
    ['Cheese', '100', Colors.brown, 'lib/images/queso.png', 'SuperPizza'],
    ['Peperoni', '100', Colors.pink, 'lib/images/peperoni.png', 'Pizza Hut'],
    ['Mushroom', '100', Colors.yellow, 'lib/images/hongos.png', 'Dominos'],
    [
      'Hawaiana',
      '100',
      Colors.purple,
      'lib/images/hawaiana.png',
      'Little Caesars',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      ///Se encarga de acomodar elementos dentro del grid
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio:
            1 /
            1.45, //relacion de aspecto ancho/alto  //aqui se puede alargar la barra/contenedor del fondo
      ), //crossAxisCount numeros de columnas
      //lo que se construye en el grid (contenido)
      itemCount: pizzaOnSale.length, //cuantos elementos tendra
      itemBuilder: (context, index) {
        //construye cada elemento
        return PizzaTile(
          //le pasamos los elementos de la lista a la clase DonutTile
          pizzaFlavor: pizzaOnSale[index][0],
          pizzaPrice: pizzaOnSale[index][1],
          pizzaColor: pizzaOnSale[index][2],
          pizzaImagePath: pizzaOnSale[index][3],
          pizzaProvider: pizzaOnSale[index][4],
        );
      },
    );
  }
}
