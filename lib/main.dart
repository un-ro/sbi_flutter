import 'package:flutter/material.dart';
import 'package:sbi_flutter/week_one/hello_world.dart';

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
      home: const HelloPage(),
    );
  }
}
