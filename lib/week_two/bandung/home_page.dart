import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text('Hello Anderson'),
                    Text('Have a nice day'),
                  ],
                ),
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://api.lorem.space/image/face?w=150&h=150",
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 250,
            margin: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(24.0)),
              image: DecorationImage(
                image: NetworkImage(
                  "https://placekitten.com/500/250",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: const Text(
              "ANIMALS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
