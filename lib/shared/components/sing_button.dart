import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class SignButton extends StatelessWidget {
  final String txt;
  const SignButton({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(kprimaryColor),
          foregroundColor: WidgetStatePropertyAll(Colors.white),
        ),
        onPressed: () {},
        child: Text('Sign $txt', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
