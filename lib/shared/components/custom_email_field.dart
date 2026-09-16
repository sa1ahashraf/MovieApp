import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class CustomEmailField extends StatelessWidget {
  final Icon icon;
  final String hintText;
  final TextEditingController controller;
  const CustomEmailField({
    super.key,
    required this.icon,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Email is required';
        } else if (!RegExp(
          r'^[a-zA-Z0-9._%+-]+@gmail\.com$',
        ).hasMatch(value.trim())) {
          return 'This is an invalid email';
        }
        return null;
      },
      controller: controller,
      decoration: InputDecoration(
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1),
          borderRadius: BorderRadius.circular(24),
        ),
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
