import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item_info.dart';
import 'package:language_learning_app/models/item_model.dart'; // Change your_app_name to your app’s name

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});
  final List<ItemModel> familyMembers = const [
    ItemModel(
      sound: 'sounds/family_members/father.wav',
      image: 'assets/images/family_members/family_father.png',
      jPName: 'お父さん (Otousan)',
      enName: 'Father',
    ),
    ItemModel(
      sound: 'sounds/family_members/mother.wav',
      image: 'assets/images/family_members/family_mother.png',
      jPName: 'お母さん (Okaasan)',
      enName: 'Mother',
    ),
    ItemModel(
      sound: 'sounds/family_members/older brother.wav',
      image: 'assets/images/family_members/family_older_brother.png',
      jPName: 'お兄さん (Oniisan)',
      enName: 'Older Brother',
    ),
    ItemModel(
      sound: 'sounds/family_members/older sister.wav',
      image: 'assets/images/family_members/family_older_sister.png',
      jPName: 'お姉さん (Oneesan)',
      enName: 'Older Sister',
    ),
    ItemModel(
      sound: 'sounds/family_members/son.wav',
      image: 'assets/images/family_members/family_son.png',
      jPName: '息子 (Musuko)',
      enName: 'Son',
    ),
    ItemModel(
      sound: 'sounds/family_members/daughter.wav',
      image: 'assets/images/family_members/family_daughter.png',
      jPName: '娘 (Musume)',
      enName: 'Daughter',
    ),
    ItemModel(
      sound: 'sounds/family_members/grand mother.wav',
      image: 'assets/images/family_members/family_grandmother.png',
      jPName: 'おばあさん (Obaasan)',
      enName: 'Grandmother',
    ),
    ItemModel(
      sound: 'sounds/family_members/grand father.wav',
      image: 'assets/images/family_members/family_grandfather.png',
      jPName: 'おじいさん (Ojiisan)',
      enName: 'Grandfather',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger sister.wav',
      image: 'assets/images/family_members/family_younger_sister.png',
      jPName: '妹 (Imouto)',
      enName: 'Younger Sister',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger brother.wav',
      image: 'assets/images/family_members/family_younger_brother.png',
      jPName: '弟 (Otouto)',
      enName: 'Younger Brother',
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
          'Family Members',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return Item(item: familyMembers[index]); // Pass FamilyMember
        },
      ),
    );
  }
}

