import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

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
        child: Text('Sign in', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
