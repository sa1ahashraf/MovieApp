import 'package:flutter/material.dart';

class MoviePoster extends StatelessWidget {
  final double w;
  final double h;
  const MoviePoster({super.key, required this.w, required this.h});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Image.network(
        "https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg",
        width: w,
        height: h,
        fit: BoxFit.cover,
      ),
    );
  }
}
