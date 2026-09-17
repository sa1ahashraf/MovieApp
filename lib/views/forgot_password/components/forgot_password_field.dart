import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class ForgotPasswordField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  const ForgotPasswordField({
    super.key,
    required this.icon,
    required this.hintText,
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
      decoration: InputDecoration(
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1),
          borderRadius: BorderRadius.circular(24),
        ),
        filled: true,
        hintText: hintText,
        fillColor: kbackgroundFieldsColor,
        prefixIcon: Icon(icon),
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
