import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class ResetLinkButton extends StatelessWidget {
  const ResetLinkButton({super.key});

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
        child: Row(
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
