import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';
import 'package:movie_app/shared/components/custom_text.dart';
import 'package:movie_app/shared/components/default_app_bar.dart';
import 'package:movie_app/views/profile/components/account_settings.dart';
import 'package:movie_app/views/profile/components/profile_pic.dart';
import 'package:movie_app/views/profile/components/watch_list_container.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackGroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: DefaultAppBar(),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ProfilePic(),
            ),
          ),
          SliverToBoxAdapter(
            child: Center(child: Customtext(text: 'Salah ashraf')),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: const Text(
                'salahandrea99@gmail.com',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 130,
                vertical: 15,
              ),
              child: WatchListCotainer(),
            ),
          ),
          SliverToBoxAdapter(child: AccountSettings()),
        ],
      ),
    );
  }
}
