import 'package:flutter/material.dart';

class Ratesyle extends StatelessWidget {
  const Ratesyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Color(0xff176573), size: 14),
        SizedBox(width: 5),
        Text('4.7'),
      ],
    );
  }
}
