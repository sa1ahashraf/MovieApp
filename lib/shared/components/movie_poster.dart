import 'package:flutter/material.dart';
import 'package:movie_app/core/routing/app_routes.dart';

class MoviePoster extends StatelessWidget {
  final double w;
  final double h;
  const MoviePoster({super.key, required this.w, required this.h});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, AppRoutes.details),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Image.network(
          "https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg",
          width: w,
          height: h,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
