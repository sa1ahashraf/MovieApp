import 'package:flutter/material.dart';

class Customtext extends StatelessWidget {
  final String text;
  final double fonSize;
  const Customtext({super.key, required this.text, this.fonSize = 20});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: fonSize),
    );
  }
}
