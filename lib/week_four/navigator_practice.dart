import 'package:flutter/material.dart';

import 'components/practice_components.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  int reDraw = 0;
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(page: 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Saya telah dipanggil $reDraw kali"),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                final data = await Navigator.of(context).pushNamed('/second');

                setState(() {
                  reDraw++;
                  if (data != null) {
                    result = data.toString();
                  } else {
                    result = "";
                  }
                });
              },
              child: const MyText(value: "Navigation Page 2"),
            ),
            const SizedBox(height: 16.0),
            Visibility(
              visible: result.isNotEmpty,
              child: Text("Saya kembali dari $result"),
            )
          ],
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(page: 2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/third'),
              child: const MyText(value: "Navigation Page 3"),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, "dari halaman 2"),
              child: const MyText(value: "Navigation Page 1"),
            )
          ],
        ),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(page: 3),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/fourth'),
          child: const MyText(value: "Navigation Page 4"),
        ),
      ),
    );
  }
}

class PageFour extends StatelessWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(page: 4),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.popUntil(context, (r) => r.isFirst),
          child: const MyText(value: "Navigation Page 1"),
        ),
      ),
    );
  }
}
