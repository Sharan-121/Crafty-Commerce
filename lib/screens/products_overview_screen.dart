import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/product_grid.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      title: 'Sweat \n Shirt',
      description: '--',
      price: 30.99,
      imageUrl:
          'https://images-eu.ssl-images-amazon.com/images/I/51w7bn+zn6L._AC._SR360,460.jpg',
      isFavorite: false,
    ),
    Product(
      id: 'p2',
      title: 'Girl Sneakers',
      description: '--',
      price: 30.99,
      imageUrl:
          'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/7cd86ac7-d3ff-4fb7-b58b-777abb9dec04/vapor-edge-pro-360-mens-football-cleats-Ff9S1D.png',
      isFavorite: false,
    ),
    Product(
      id: 'p3',
      title: 'Craft Kit',
      description: '--',
      price: 30.99,
      imageUrl:
          'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/2e141c33-5ec8-45ca-96bd-53aa5e3eea7a/giannis-immortality-basketball-shoes-X7QzFT.png',
      isFavorite: false,
    ),
    Product(
      id: 'p4',
      title: 'Craft Kit',
      description: '--',
      price: 30.99,
      imageUrl:
          'https://mysparklebox.com/wp-content/uploads/2021/08/image-1-34-600x600.jpg',
      isFavorite: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crafty Commerce"),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20.0),
        padding: const EdgeInsets.all(5),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio:
                1.7 / 1.8, // childAspectRatio => itemwidth/itemheight.
            crossAxisSpacing: 10,
            mainAxisSpacing: 30,
          ),
          itemBuilder: (ctx, index) {
            return ProductGrid(product: loadedProducts[index]);
          },
          itemCount: loadedProducts.length,
        ),
      ),
    );
  }
}
