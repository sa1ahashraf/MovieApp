import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class AlreadyHaveAnAccWidget extends StatelessWidget {
  final String txt;
  const AlreadyHaveAnAccWidget({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(txt),
        TextButton(
          style: ButtonStyle(
            shadowColor: WidgetStatePropertyAll<Color?>(kprimaryColor),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Sign in',
            style: TextStyle(color: kprimaryColor, fontWeight: FontWeight(800)),
          ),
        ),
      ],
    );
  }
}
