import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';
import 'package:movie_app/shared/components/custom_text.dart';
import 'package:movie_app/shared/components/default_app_bar.dart';
import 'package:movie_app/shared/components/movie_item.dart';

class WatchListView extends StatelessWidget {
  const WatchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackGroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: DefaultAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Customtext(
                text: 'My WatchList',
                fonSize: 30,
                color: kprimaryColor,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30, top: 5),
                child: Text('21 movies are saved for later'),
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: 5,
                (contxt, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: MovieItem(),
                ),
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
