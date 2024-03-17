//! Импорт для работы с UI

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

//! Функция main() главная функция с которой начинается выполнение приложения
//? Также возвращается виджет приложения

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello Flutter",
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: const HomeWidget());
  }
}

class ImageCardWidget extends StatelessWidget {
  final String? imageName;
  final String? text;

  const ImageCardWidget({
    super.key,
    this.imageName,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: Card(
          elevation: 15.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/$imageName",
                  width: 110,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text ?? 'Пока нет',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.amber, title: const Text('ШАВУРМА')),
      body: Container(
        color: const Color.fromARGB(255, 190, 179, 210),
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: const [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ImageCardWidget(
                  imageName: 'sh.png',
                  text: 'Гавайская',
                ),
                ImageCardWidget(
                  imageName: 'sh.png',
                  text: 'Гавайская',
                ),
                ImageCardWidget(
                  imageName: 'sh.png',
                  text: 'Гавайская',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
