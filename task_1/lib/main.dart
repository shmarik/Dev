import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Row(
          children: [
            Expanded(
              child: FittedBox(
                  fit: BoxFit.contain,
                  child: Image.asset("assets/images/ljbgbkln.png")
              ),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.asset("assets/images/ljbgbkln.png")
              ),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.asset("assets/images/ljbgbkln.png")
              ),
            ),
          ],
        ),
      ),
    );
  }
}
