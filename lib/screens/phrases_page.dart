// lib/screens/phrases_page.dart
import 'package:flutter/material.dart';
import 'package:language_learning_app/models/phrase.dart';  
import 'package:language_learning_app/components/phrases_item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Phrase> phrases = const [
  Phrase(
    sound: 'sounds/phrases/are_you_coming.wav',
    jPName: 'あなたは来ますか (Anata wa kimasu ka)',
    enName: 'Are you coming?',
  ),
  Phrase(
    sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    jPName: '購読を忘れないでください \n(Koudoku o wasurenaide kudasai)',
    enName: 'Don’t forget to subscribe',
  ),
  Phrase(
    sound: 'sounds/phrases/how_are_you_feeling.wav',
    jPName: '気分はどうですか (Kibun wa dou desu ka)',
    enName: 'How are you feeling?',
  ),
  Phrase(
    sound: 'sounds/phrases/i_love_anime.wav',
    jPName: '私はアニメが大好きです\n (Watashi wa anime ga daisuki desu)',
    enName: 'I love anime',
  ),
  Phrase(
    sound: 'sounds/phrases/programming_is_easy.wav',
    jPName: 'プログラミングは簡単です \n(Puroguramingu wa kantan desu)',
    enName: 'Programming is easy',
  ),
  Phrase(
    sound: 'sounds/phrases/what_is_your_name.wav',
    jPName: 'あなたの名前は何ですか\n (Anata no namae wa nan desu ka)',
    enName: 'What is your name?',
  ),
  Phrase(
    sound: 'sounds/phrases/where_are_you_going.wav',
    jPName: 'どこに行くのですか (Doko ni iku no desu ka)',
    enName: 'Where are you going?',
  ),
  Phrase(
    sound: 'sounds/phrases/yes_im_coming.wav',
    jPName: 'はい、私は来ます (Hai, watashi wa kimasu)',
    enName: 'Yes, I am coming',
  ),
  Phrase(
    sound: 'sounds/phrases/i_love_programming.wav',
    jPName: '私はプログラミングが大好きです \n(Watashi wa puroguramingu ga daisuki desu)',
    enName: 'I love programming',
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
          'Phrases',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhrasesItem(item: phrases[index]); // Pass Phrase
        },
      ),
    );
  }
}
