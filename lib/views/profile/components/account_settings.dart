import 'package:flutter/material.dart';

import 'package:movie_app/views/profile/components/edit_profile_tile.dart';
import 'package:movie_app/views/profile/components/log_out_tile.dart';
import 'package:movie_app/views/profile/components/theme_tile.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Account Settings', style: TextStyle(color: Colors.grey)),
          const SizedBox(height: 5),
          EditProfileTile(),
          ThemeTile(),
          SizedBox(height: 10),
          LogOutTile(),
        ],
      ),
    );
  }
}
