import 'package:flutter/material.dart';
import 'package:movie_app/shared/components/custom_text.dart';
import 'package:movie_app/shared/components/default_app_bar.dart';
import 'package:movie_app/views/details/components/actor_photo.dart';
import 'package:movie_app/views/details/components/background_cover.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: const Text(
                "In a future where sound has become a deadly weapon, a lone explorer must navigate the ruins of a once-great civilization to find the key to silence. As she traverses the neon-drenched landscapes, she discovers that the greatest threat might not be the noise outside, but the secrets buried deep within her own past.",
              ),
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
        ],
      ),
    );
  }
}
