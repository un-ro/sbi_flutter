class Product {
  String id;
  String name;
  String description;
  int price;

  Product({
    required this.id,
    required this.name,
    this.description = "",
    required this.price,
  });
}
