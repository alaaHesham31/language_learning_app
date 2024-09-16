import 'package:flutter/material.dart';


class Category extends StatelessWidget {
Category({Key? key, this.text, this.onTap}) : super(key: key);
  final String? text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 229, 231, 233),
            borderRadius: BorderRadius.circular(10),
            border: Border(
              bottom: BorderSide(color: Color.fromARGB(255, 5, 44, 77), width: 4),
            )),
        height: 160,
        width: 160,
        child: Center(
          child: Text(
            text!,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
