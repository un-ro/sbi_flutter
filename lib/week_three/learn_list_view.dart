import 'package:flutter/material.dart';
import 'package:sbi_flutter/models/product.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<Product> products = [
    Product(id: "1", name: "Item 1", price: 50000),
    Product(id: "2", name: "Item 2", price: 30000),
    Product(id: "3", name: "Item 3", price: 20000),
    Product(id: "4", name: "Item 4", price: 55000),
    Product(id: "5", name: "Item 5", price: 67000),
    Product(id: "6", name: "Item 6", price: 88000),
    Product(id: "7", name: "Item 7", price: 125000),
    Product(id: "8", name: "Item 8", price: 25000),
    Product(id: "9", name: "Item 9", price: 75000),
    Product(id: "10", name: "Item 10", price: 650000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping Cart"),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) => Card(
          color: Colors.green,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  products[index].name,
                  style: const TextStyle(
                    fontSize: 38.0,
                    color: Colors.black87,
                  ),
                ),
                leading: const CircleAvatar(
                  radius: 32.0,
                  backgroundImage: NetworkImage(
                    "https://api.lorem.space/image/shoes?w=150&h=150",
                  ),
                ),
                subtitle: Text(
                  'Rp${products[index].price}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const ShoppingCartItem(),
            ],
          ),
        ),
      ),
    );
  }
}

class ShoppingCartItem extends StatefulWidget {
  const ShoppingCartItem({Key? key}) : super(key: key);

  @override
  State<ShoppingCartItem> createState() => _ShoppingCartItemState();
}

class _ShoppingCartItemState extends State<ShoppingCartItem> {
  int _qty = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.delete,
          ),
        ),
        IconButton(
          onPressed: () => setState(() {
            if (_qty > 1) _qty--;
          }),
          icon: const Icon(
            Icons.remove,
          ),
        ),
        Text('$_qty'),
        IconButton(
          onPressed: () => setState(() {
            _qty++;
          }),
          icon: const Icon(
            Icons.add,
          ),
        ),
      ],
    );
  }
}
