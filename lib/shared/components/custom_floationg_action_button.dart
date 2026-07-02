import 'package:flutter/material.dart';
import 'package:movie_app/shared/components/custom_text.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final String buttonName;
  final Icon icon;
  const CustomFloatingActionButton({
    super.key,
    required this.buttonName,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      shape: StadiumBorder(),
      foregroundColor: Colors.white,
      backgroundColor: Color(0xff004d5f),
      label: Customtext(text: buttonName, fonSize: 18),
      icon: icon,
      extendedPadding: EdgeInsets.symmetric(horizontal: 95, vertical: 10),
      onPressed: () {},
    );
  }
}
