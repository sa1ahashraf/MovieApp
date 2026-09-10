import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class CustomPasswordField extends StatefulWidget {
  final Icon icon;
  final String hintText;
  const CustomPasswordField({
    super.key,
    required this.icon,
    required this.hintText,
  });

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObscure,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () => {
            setState(() {
              isObscure = !isObscure;
            }),
          },
          icon: Icon(
            isObscure
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
          ),
        ),
        filled: true,
        hintText: widget.hintText,
        fillColor: kbackgroundFieldsColor,
        focusColor: kprimaryColor,
        prefixIcon: widget.icon,
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
