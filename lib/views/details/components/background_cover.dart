import 'package:flutter/material.dart';

import 'package:movie_app/views/details/components/custom_positioned.dart';

class BackgroundCover extends StatelessWidget {
  const BackgroundCover({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.7, 0.9],
              colors: [Colors.white.withAlpha(0), Colors.white.withAlpha(400)],
            ),
          ),
          child: Image.network(
            "https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg",
            height: 500,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        CustomPositioned(),
      ],
    );
  }
}
