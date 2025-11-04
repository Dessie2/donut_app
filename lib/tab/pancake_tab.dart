import 'package:flutter/material.dart';
import 'package:donut_app/utils/pancake_tile.dart';

class PancakeTab extends StatelessWidget {
  PancakeTab({super.key});

  final List pancakesOnSale = [
    // pancakeFlavor, pancakePrice, pancakeColor, pancakeImagePath, pancakeProvider
    [
      'Clásico',
      '80',
      Colors.brown,
      'lib/images/arandanos.png',
      'Pancake House',
    ],
    [
      'Chocolate',
      '90',
      Colors.deepOrange,
      'lib/images/clasic.png',
      'Sweet Stack',
    ],
    [
      'Frutas',
      '95',
      Colors.yellow,
      'lib/images/mantequilla.png',
      'Breakfast & Co.',
    ],
    [
      'Blueberry',
      '100',
      Colors.purple,
      'lib/images/strawberry.png',
      'Morning Joy',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.45,
      ),
      itemCount: pancakesOnSale.length,
      itemBuilder: (context, index) {
        return PancakeTile(
          pancakeFlavor: pancakesOnSale[index][0],
          pancakePrice: pancakesOnSale[index][1],
          pancakeColor: pancakesOnSale[index][2],
          pancakeImagePath: pancakesOnSale[index][3],
          pancakeProvider: pancakesOnSale[index][4],
        );
      },
    );
  }
}
