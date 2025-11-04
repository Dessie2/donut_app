import 'package:flutter/material.dart';
import 'package:donut_app/utils/burger_tile.dart';

class BurgerTab extends StatelessWidget {
  BurgerTab({super.key});

  final List<List<dynamic>> burgersOnSale = [
    [
      'Cheese Burger',
      '120',
      Colors.brown,
      'lib/images/cheese_burger.png',
      'McDonalds',
    ],
    [
      'Chicken Burger',
      '110',
      Colors.orange,
      'lib/images/simple_burger.png',
      'KFC',
    ],
    [
      'Double Beef',
      '150',
      Colors.red,
      'lib/images/tocino_burger.png',
      'Burger King',
    ],
    [
      'Veggie Burger',
      '95',
      Colors.green,
      'lib/images/withfries_burger.png',
      'Subway',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.45,
      ),
      itemCount: burgersOnSale.length,
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerName: burgersOnSale[index][0],
          burgerPrice: burgersOnSale[index][1],
          burgerColor: burgersOnSale[index][2],
          burgerImagePath: burgersOnSale[index][3],
          burgerProvider: burgersOnSale[index][4],
        );
      },
    );
  }
}
