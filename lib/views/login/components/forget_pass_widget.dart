import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class ForgetPassWidget extends StatelessWidget {
  const ForgetPassWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 15),
      child: TextButton(
        style: ButtonStyle(shadowColor: WidgetStatePropertyAll(Colors.green)),
        onPressed: () {},
        child: Text(
          'ForgotPassword?',
          style: TextStyle(color: kprimaryColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
