import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductGrid extends StatelessWidget {
  final Product product;

  ProductGrid({required this.product});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        product.imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(

        backgroundColor: Colors.black54,
        title: Text(
          product.title,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
