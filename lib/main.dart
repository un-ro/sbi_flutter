import 'package:flutter/material.dart';

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
      home: null,
    );
  }
}
