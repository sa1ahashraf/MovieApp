import 'package:flutter/material.dart';
import 'package:movie_app/shared/components/custom_text.dart';
import 'package:movie_app/shared/components/rate_style.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 150,
          height: 210,
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(24),
            child: Image.network(
              "https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 40, top: 7),
          child: Customtext(text: "Batman return", fonSize: 10),
        ),
        Ratesyle(),
      ],
    );
  }
}
