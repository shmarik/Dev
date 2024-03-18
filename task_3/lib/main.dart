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
          body: const ImageChanger()),
    );
  }
}

class ImageChanger extends StatefulWidget {
  const ImageChanger({super.key});

  @override
  State<ImageChanger> createState() => _ImageChangerState();
}

class _ImageChangerState extends State<ImageChanger> {
  int _imageIndex = 0;
  final List<String> _images = [
    'iamge1.png'
        'image2.png'
        'image3.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Expanded(child: FittedBox(
        //   child: Image.asset(_images[_imageIndex])
        // )),
        Expanded(
            child: FittedBox(
          child: Text('Image  Changed:$_imageIndex'),
        )),
        ElevatedButton(
            onPressed: () {
              setState(() {
                _imageIndex = (_imageIndex + 1) % _images.length;
              });
            },
            chb  ild: const Text('Change Image'))
      ],
    );
  }
}
