import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class SignButton extends StatelessWidget {
  final String txt;
  final double? width;
  final bool isLoading;
  final void Function()? onPressed;
  const SignButton({
    super.key,
    required this.txt,
    this.width,
    this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(kprimaryColor),
          foregroundColor: WidgetStatePropertyAll(Colors.white),
        ),
        onPressed: isLoading ? null : onPressed,
        child: isLoading
            ? CircularProgressIndicator(color: Colors.white)
            : Text('Sign $txt', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
