import 'package:flutter/material.dart';

/*
  Week 3 Online Class
  27 September 2022
  Topic: Stateless, Statefull Widget
 */

class HelloWidgetState extends StatefulWidget {
  const HelloWidgetState({Key? key}) : super(key: key);

  @override
  State<HelloWidgetState> createState() => _HelloWidgetStateState();
}

class _HelloWidgetStateState extends State<HelloWidgetState> {
  Color textColor = Colors.black;

  void changeColor(Color newColor) {
    setState(() {
      textColor = newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 32.0),
            child: CircleAvatar(
              radius: 48,
              backgroundImage:
                  NetworkImage("https://api.lorem.space/image?w=150&h=180"),
            ),
          ),
          const Text(
            "Hello",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            "World!",
            style: TextStyle(
              color: textColor,
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 32.0,
              horizontal: 16.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => changeColor(Colors.blue),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text("Blue"),
                ),
                ElevatedButton(
                  onPressed: () => changeColor(Colors.green),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text("Green"),
                ),
                ElevatedButton(
                  onPressed: () => changeColor(Colors.red),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text("Red"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
