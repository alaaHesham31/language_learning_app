import 'package:flutter/material.dart';
import 'package:language_learning_app/components/category_item.dart';
import 'package:language_learning_app/screens/colors_page.dart';
import 'package:language_learning_app/screens/family_members.dart';
import 'package:language_learning_app/screens/numbers_page.dart';
import 'package:language_learning_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 5, 44, 77),
        title: const Text(
          'Tuko',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 64.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Category(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                      return NumbersPage();
                    }));
                  },
                  text:'Numbers'),
                SizedBox(
                  height: 20.0,
                ),
                Category(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                      return FamilyMembers();
                    }));
                  },
                  text: 'Family Members',)
              ],
            ),
            Column(
              children: [
                Category(
                   onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                      return ColorsPage();
                    }));
                  },
                  text: 'Colors',),
                SizedBox(
                  height: 20.0,
                ),
               Category(
                 onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                      return PhrasesPage();
                    }));
                  },
                  text: 'Phrases',),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

