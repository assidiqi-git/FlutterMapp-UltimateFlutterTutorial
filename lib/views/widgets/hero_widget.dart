import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          tag: 'hero1',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/Bg.jpg',
              color: Colors.tealAccent,
              colorBlendMode: BlendMode.softLight,
            ),
          ),
        ),
        FittedBox(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.teal[300],
              fontWeight: FontWeight.bold,
              fontSize: 50,
              letterSpacing: 20,
            ),
          ),
        ),
      ],
    );
  }
}
