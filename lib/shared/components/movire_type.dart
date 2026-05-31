import 'package:flutter/material.dart';

class MovieType extends StatelessWidget {
  const MovieType({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff96cced),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Text(
            'Action',
            style: TextStyle(color: Colors.black.withAlpha(230)),
          ),
        ),
      ),
    );
  }
}
