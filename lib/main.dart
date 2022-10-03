import 'package:flutter/material.dart';
import 'package:sbi_flutter/week_four/catalog_screen.dart';
import 'package:sbi_flutter/week_four/detail_screen.dart';
import 'package:sbi_flutter/week_three/learn_list_view.dart';
import 'package:sbi_flutter/week_two/bandung/home_page.dart';

import 'models/product.dart';

void main() => runApp(const MaterialThemeApp());

class MaterialThemeApp extends StatelessWidget {
  const MaterialThemeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SBI Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Change to any Widget!
      home: ProductDetailPage(
        product: Product(
          id: '1',
          name: 'Bata',
          price: 75000,
          description: 'Bata adalah sepatu yang sangat nyaman dipakai',
        ),
      ),
    );
  }
}
