import 'package:flutter/material.dart';
import 'package:movie_app/views/search/components/search_result_item.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SearchResultItem(),
          const SizedBox(width: 10),
          SearchResultItem(),
        ],
      ),
    );
  }
}
