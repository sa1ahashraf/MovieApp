import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class ForgetPassWidget extends StatelessWidget {
  const ForgetPassWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: Text(
        'ForgetPassword?',
        style: TextStyle(color: kprimaryColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
