import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class ResetLinkButton extends StatelessWidget {
  final void Function()? onPressed;
  final bool isLoading;
  const ResetLinkButton({super.key, this.onPressed, required this.isLoading});

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
        onPressed: isLoading ? null : onPressed,
        child: isLoading
            ? CircularProgressIndicator(color: Colors.white)
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SEND RESET LINK',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
      ),
    );
  }
}
