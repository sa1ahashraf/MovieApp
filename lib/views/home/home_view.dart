import 'package:flutter/material.dart';
import 'package:movie_app/shared/components/custom_text.dart';
import 'package:movie_app/views/details/details_view.dart';
import 'package:movie_app/views/home/components/home_app_bar.dart';
import 'package:movie_app/views/home/components/movie_item.dart';
import 'package:movie_app/views/home/components/movie_top_rated_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: HomeAppBar(),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: const Customtext(text: "Popular Movies"),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 270,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DetailsView()),
                    ),
                    child: const MovieItem(),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Customtext(text: "Top Rated"),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DetailsView()),
                  ),
                  child: const MovieCard(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
