import 'package:flutter/material.dart';
import 'package:movie_app/shared/components/custom_text.dart';
import 'package:movie_app/shared/components/default_app_bar.dart';
import 'package:movie_app/shared/components/movie_poster.dart';
import 'package:movie_app/views/details/components/actor_photo.dart';
import 'package:movie_app/views/details/components/background_cover.dart';
import 'package:movie_app/shared/components/custom_floationg_action_button.dart';
import 'package:movie_app/views/details/components/story_line_text.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActionButton(
        icon: Icon(Icons.play_arrow),
        buttonName: 'Watch trailer',
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: DefaultAppBar(isArrowActive: true),
      ),

      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 600, child: BackgroundCover()),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Customtext(text: "StoryLine"),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: StoryLineText(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Customtext(text: 'Cast'),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 140,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ActorPhoto(),
                ),
                itemCount: 10,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: const Customtext(text: "More Like This"),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: SizedBox(
                child: Row(
                  children: [
                    const Spacer(flex: 1),
                    MoviePoster(w: 160, h: 210),
                    const Spacer(flex: 2),
                    MoviePoster(w: 160, h: 210),
                    const Spacer(flex: 1),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
