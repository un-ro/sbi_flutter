import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          tooltip: 'Back',
        ),
        title: const Text('Product Details'),
      ),
      body: ListView(
        children: [
          Image.network('https://picsum.photos/250?image=9'),
          ListTile(
            title: Text(
              product.price.toString(),
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              product.name,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_outline),
            ),
          ),
          const SizedBox(height: 12),
          ListTile(
            title: const Text(
              'Description',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              product.description,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      persistentFooterButtons: [
        ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
            label: const Text('Add to Cart'),
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.tealAccent.shade700,
            ),
          ),
        )
      ],
    );
  }
}
