import 'package:flutter/material.dart';

/*
  Week 2 - 19 September 2022
  Topics: Column, Row, and basic Widget.
 */

class LayoutPage extends StatelessWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Halo saya latihan')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Saya widget ditengah"),
              Container(
                color: Colors.redAccent,
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("saya kiri"),
                  Text("saya kanan"),
                ],
              ),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  color: Colors.yellow,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    color: Colors.purple,
                    child: const Center(
                      child: Text(
                        "Saya berwarna",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ))
            ],
          ),
          Container(
            color: Colors.black,
            height: 40,
            child: const Center(
              child: Text(
                'Saya bawah sendiri',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text("ABC"),
      ),
    );
  }
}
