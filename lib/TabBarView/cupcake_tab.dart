import 'package:flutter/material.dart';

import '../Utilities/Tiles/cupcake_tile.dart';

class CupCakesTab extends StatelessWidget {
  const CupCakesTab({super.key});

  @override
  Widget build(BuildContext context) {
    List cupCakes = [
      // flavor, price, color, image
      ['Strawberry', '\रु230', Colors.red, 'assets/cupcakes/cupcake1.png'],
      ['Vanila', '\रु180', Colors.orange, 'assets/cupcakes/cupcake2.png'],
      ['Chocolate', '\रु450', Colors.brown, 'assets/cupcakes/cupcake3.png'],
      ['Rose', '\रु300', Colors.green, 'assets/cupcakes/cupcake4.png'],
      ['Caramel', '\रु350', Colors.purple, 'assets/cupcakes/cupcake5.png']
    ];
    return GridView.builder(
        itemCount: cupCakes.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return CupCakeTiles(
            flavor: cupCakes[index][0],
            price: cupCakes[index][1],
            colors: cupCakes[index][2],
            imagePath: cupCakes[index][3],
          );
        });
  }
}
