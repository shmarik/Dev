import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Image.asset("assets/images/ljbgbkln.png"),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                      child: Text(
                        'LoreM4ick',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
