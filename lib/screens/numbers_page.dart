import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item_info.dart';
import 'package:language_learning_app/models/item_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  
  final List<ItemModel> numbers = const [
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      image: 'assets/images/numbers/number_one.png',
      jPName: '一 (Ichi)',
      enName: 'One',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_two_sound.mp3',
      image: 'assets/images/numbers/number_two.png',
      jPName: '二 (Ni)',
      enName: 'Two',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_three_sound.mp3',
      image: 'assets/images/numbers/number_three.png',
      jPName: '三 (San)',
      enName: 'Three',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_four_sound.mp3',
      image: 'assets/images/numbers/number_four.png',
      jPName: '四 (Shi/Yon)',  // Both "Shi" and "Yon" can be used for four.
      enName: 'Four',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_five_sound.mp3',
      image: 'assets/images/numbers/number_five.png',
      jPName: '五 (Go)',
      enName: 'Five',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_six_sound.mp3',
      image: 'assets/images/numbers/number_six.png',
      jPName: '六 (Roku)',
      enName: 'Six',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_seven_sound.mp3',
      image: 'assets/images/numbers/number_seven.png',
      jPName: '七 (Shichi/Nana)',  // Both "Shichi" and "Nana" can be used for seven.
      enName: 'Seven',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_eight_sound.mp3',
      image: 'assets/images/numbers/number_eight.png',
      jPName: '八 (Hachi)',
      enName: 'Eight',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_nine_sound.mp3',
      image: 'assets/images/numbers/number_nine.png',
      jPName: '九 (Kyuu)',
      enName: 'Nine',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_ten_sound.mp3',
      image: 'assets/images/numbers/number_ten.png',
      jPName: '十 (Juu)',
      enName: 'Ten',
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
          'Numbers',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(item: numbers[index]);
        },
      ),
    );
  }
}
