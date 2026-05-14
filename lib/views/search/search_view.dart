import 'package:flutter/material.dart';
import 'package:movie_app/shared/components/custom_text.dart';
import 'package:movie_app/shared/components/default_app_bar.dart';
import 'package:movie_app/views/search/components/could_not_found_movies.dart';
import 'package:movie_app/views/search/components/custom_search_text_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f9fb),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: DefaultAppBar(),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: CustomSearchTextField(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 24, bottom: 7),
              child: const Customtext(text: "Search result"),
            ),
          ),
          SliverToBoxAdapter(child: const CouldNotFoundMovies()),
        ],
      ),
    );
  }
}
/* SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (contxt, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SearchResultItem(),
              ),
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.6,
            ),
          )*/