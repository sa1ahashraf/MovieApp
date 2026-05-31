import 'package:flutter/material.dart';
import 'package:movie_app/shared/components/custom_text.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      shape: StadiumBorder(),
      foregroundColor: Colors.white,
      backgroundColor: Color(0xff004d5f),
      label: Customtext(text: 'Watch trailer', fonSize: 18),
      icon: Icon(Icons.play_arrow),
      extendedPadding: EdgeInsets.symmetric(horizontal: 95, vertical: 10),
      onPressed: () {},
    );
  }
}
