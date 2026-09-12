import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class CustomEmailField extends StatelessWidget {
  final Icon icon;
  final String hintText;
  const CustomEmailField({
    super.key,
    required this.icon,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        hintText: hintText,
        fillColor: kbackgroundFieldsColor,
        prefixIcon: icon,
        prefixIconColor: Colors.grey,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white.withAlpha(0), width: 1),
          borderRadius: BorderRadius.circular(24),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    );
  }
}
