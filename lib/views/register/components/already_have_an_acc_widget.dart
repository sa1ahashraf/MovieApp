import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class AlreadyHaveAnAccWidget extends StatelessWidget {
  const AlreadyHaveAnAccWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Don\'t have an accont ?'),
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
