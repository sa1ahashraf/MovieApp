import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffedeef0),
        focusColor: kprimaryColor,

        hintText: 'Search for movies',
        prefixIcon: Icon(Icons.search),
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
