import 'package:flutter/material.dart';
import 'package:movie_app/shared/components/custom_text.dart';
import 'package:movie_app/shared/components/movie_poster.dart';
import 'package:movie_app/shared/components/rate_style.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 210, width: 150, child: MoviePoster(w: 20, h: 40)),
        Padding(
          padding: const EdgeInsets.only(right: 40, top: 7),
          child: Customtext(text: "Batman return", fonSize: 10),
        ),
        Ratesyle(),
      ],
    );
  }
}
