import 'package:flutter/material.dart';

class Customtext extends StatelessWidget {
  final String text;
  final double fonSize;
  final Color color;
  const Customtext({
    super.key,
    required this.text,
    this.fonSize = 20,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: fonSize,
        color: color,
      ),
    );
  }
}
