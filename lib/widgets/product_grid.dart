import 'package:flutter/material.dart';

import '../models/product.dart';
import "../screens/product_detail.dart";

class ProductGrid extends StatelessWidget {
  final Product product;

  ProductGrid({required this.product});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(ProductDetailScreen.routeName,arguments:product.id);
              // On the fly route creation.
            },
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    product.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
              color: Colors.deepOrangeAccent,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
              color: Colors.deepOrangeAccent,
            ),
          )),
    );
  }
}
