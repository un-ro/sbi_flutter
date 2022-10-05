import 'package:flutter/material.dart';
import 'package:sbi_flutter/week_four/navigator_practice.dart';

void main() => runApp(const MaterialThemeApp());

class MaterialThemeApp extends StatelessWidget {
  const MaterialThemeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SBI Flutter',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      // Routes
      initialRoute: '/',
      routes: {
        '/': (context) => PageOne(),
        '/second': (context) => const PageTwo(),
        '/third': (context) => const PageThree(),
        '/fourth': (context) => const PageFour()
      },
    );
  }
}
