import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Don\'t have an accont ?'),
        TextButton(
          onPressed: () {},
          child: Text(
            'Sign up',
            style: TextStyle(color: kprimaryColor, fontWeight: FontWeight(800)),
          ),
        ),
      ],
    );
  }
}
