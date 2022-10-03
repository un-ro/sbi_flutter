import 'package:flutter/material.dart';
import 'package:sbi_flutter/models/product.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(id: "1", name: "Bata", price: 75000),
      Product(id: "2", name: "Cavil", price: 125000),
      Product(id: "3", name: "Adidas", price: 225000),
      Product(id: "4", name: "AirWalk", price: 155000),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
          ),
        ),
        title: const Text('Catalog'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Shopping cart',
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) =>
            CatalogPageCard(product: products[index]),
      ),
    );
  }
}

class CatalogPageCard extends StatelessWidget {
  const CatalogPageCard({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Image(
              image: NetworkImage('https://picsum.photos/250?image=9'),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Rp. ${product.price}",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_outline),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_cart_outlined),
                        label: const Text("Add to Cart"),
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.tealAccent.shade700,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
