import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class CustomDataField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Icon icon;
  const CustomDataField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onTapOutside: (_) {
        FocusScope.of(context).unfocus();
      },

      decoration: InputDecoration(
        filled: true,
        fillColor: kbackgroundFieldsColor,
        focusColor: kprimaryColor,
        hintText: hintText,
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
