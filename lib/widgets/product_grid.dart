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
          title: Row(
            children: [
              Flexible(
                child: Text(
                  product.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                  softWrap: true,
                ),
              ),
            ],
          ),
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ));
  }
}
