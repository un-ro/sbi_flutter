import 'package:flutter/material.dart';

/*
  Week 2 - 21 September 2022
  Topics: Assets, Image, Stack
 */

class AssetPage extends StatefulWidget {
  const AssetPage({Key? key}) : super(key: key);

  @override
  State<AssetPage> createState() => _AssetPageState();
}

class _AssetPageState extends State<AssetPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        height: height,
        width: width,
        child: Stack(
          children: [
            // Profile
            Positioned(
              top: 0,
              child: Container(
                height: height / 3,
                width: width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://api.lorem.space/image/house?w=500&h=500"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Text(
                        "Hi, Unero!",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      CircleAvatar(
                        radius: 48,
                        backgroundImage: NetworkImage(
                            "https://api.lorem.space/image/face?w=150&h=150"),
                      )
                    ],
                  ),
                ),
              ),
            ),
            // Card
            Positioned(
              top: height / 3 - 50,
              width: width,
              child: Container(
                height: 250,
                margin: const EdgeInsets.symmetric(horizontal: 24),
                child: Card(
                  color: Colors.white,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          "Halo Button",
                          style: TextStyle(fontSize: 32),
                        ),
                        const Text("Pencet Saya"),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                          ),
                          child: SizedBox(
                            width: 200,
                            height: 48,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const <Widget>[
                                Icon(
                                  Icons.abc,
                                  color: Colors.black,
                                ),
                                Text(
                                  "Pesan Text Sekarang",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
