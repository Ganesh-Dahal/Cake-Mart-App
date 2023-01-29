import 'package:flutter/material.dart';

import '../Utilities/Tiles/muffins_tile.dart';

class MuffinsTab extends StatelessWidget {
  const MuffinsTab({super.key});

  @override
  Widget build(BuildContext context) {
    List muffins = [
      // flavor, price, color, image
      ['Strawbeer', '\रु900', Colors.red, 'assets/muffins/muffin1.png'],
      ['Vanila', '\रु800', Colors.green, 'assets/muffins/muffin2.png'],
      ['Caramel', '\रु450', Colors.brown, 'assets/muffins/muffin3.png'],
      ['Mango', '\रु780', Colors.purple, 'assets/muffins/muffin4.png'],
      ['Chocolate', '\रु650', Colors.orange, 'assets/muffins/muffin5.png']
    ];
    return GridView.builder(
        itemCount: muffins.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return MuffinTiles(
            flavor: muffins[index][0],
            price: muffins[index][1],
            colors: muffins[index][2],
            imagePath: muffins[index][3],
          );
        });
  }
}
