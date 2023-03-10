import 'package:flutter/material.dart';

import '../Utilities/Tiles/cakepiece_tile.dart';

class CakePiecesTab extends StatelessWidget {
  const CakePiecesTab({super.key});

  @override
  Widget build(BuildContext context) {
    List cakePieces = [
      // flavor, price, color, image
      ['Strawberry', '\रु100', Colors.red, 'assets/cakepieces/cake-piece1.png'],
      ['Plain cake', '\रु60', Colors.purple, 'assets/cakepieces/cake-piece2.png'],
      ['Chcolate', '\रु180', Colors.brown, 'assets/cakepieces/cake-piece3.png'],
      [
        'Black Forest',
        '\रु200',
        Colors.green,
        'assets/cakepieces/cake-piece4.png'
      ],
      ['Raspberry', '\रु150', Colors.orange, 'assets/cakepieces/cake-piece5.png']
    ];
    return GridView.builder(
        itemCount: cakePieces.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return CakePieceTile(
            flavor: cakePieces[index][0],
            price: cakePieces[index][1],
            colors: cakePieces[index][2],
            imagePath: cakePieces[index][3],
          );
        });
  }
}
