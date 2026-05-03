import 'package:flutter/material.dart';
import 'package:movie_app/shared/components/custom_text.dart';
import 'package:movie_app/shared/components/movie_poster.dart';
import 'package:movie_app/shared/components/movire_type.dart';
import 'package:movie_app/shared/components/rate_style.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MoviePoster(w: 90, h: 120),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 80, child: MovieType()),
                Customtext(text: "Batman return", fonSize: 15),
                Ratesyle(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, right: 20),
            child: Text(
              textAlign: TextAlign.right,
              '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}',
            ),
          ),
        ],
      ),
    );
  }
}
