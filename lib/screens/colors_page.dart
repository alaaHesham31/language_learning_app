import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item_info.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<ColorItem> colorItems = const [
    ColorItem(
      sound: 'sounds/colors/red.wav',
      image: 'assets/images/colors/color_red.png',
      jPName: '赤 (Aka)',
      enName: 'Red',
    ),
    ColorItem(
      sound: 'sounds/colors/green.wav',
      image: 'assets/images/colors/color_green.png',
      jPName: '緑 (Midori)',
      enName: 'Green',
    ),
    ColorItem(
      sound: 'sounds/colors/yellow.wav',
      image: 'assets/images/colors/color_yellow.png',
      jPName: '黄色 (Kiiro)',
      enName: 'Yellow',
    ),
    ColorItem(
      sound: 'sounds/colors/black.wav',
      image: 'assets/images/colors/color_black.png',
      jPName: '黒 (Kuro)',
      enName: 'Black',
    ),
    ColorItem(
      sound: 'sounds/colors/white.wav',
      image: 'assets/images/colors/color_white.png',
      jPName: '白 (Shiro)',
      enName: 'White',
    ),
    ColorItem(
      sound: 'sounds/colors/brown.wav',
      image: 'assets/images/colors/color_brown.png',
      jPName: '茶色 (Chairo)',
      enName: 'Brown',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 5, 44, 77),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: colorItems.length,
        itemBuilder: (context, index) {
          return Item(item: colorItems[index]); // Pass ColorItem
        },
      ),
    );
  }
}

class ColorItem {
  final String sound;
  final String image;
  final String jPName;
  final String enName;

  const ColorItem({
    required this.sound,
    required this.image,
    required this.jPName,
    required this.enName,
  });
}
