import 'package:flutter/material.dart';
import 'package:movie_app/shared/components/custom_text.dart';
import 'package:movie_app/shared/components/movie_poster.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MoviePoster(w: 160, h: 250),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Customtext(text: "Batman return", fonSize: 12),
        ),
        const Text("2024 • Action", style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}
