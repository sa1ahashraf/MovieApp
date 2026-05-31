import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';
import 'package:movie_app/views/profile/components/leading_icon.dart';

class ThemeTile extends StatelessWidget {
  const ThemeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      tileColor: kbackGroundListTileColor,
      leading: LeadingIcon(
        icon: Icons.dark_mode_outlined,
        iconColor: kprimaryColor,
      ),
      title: const Text('Dark Mode'),
      trailing: CupertinoSwitch(
        activeTrackColor: kprimaryColor,
        value: true,
        onChanged: (_) {},
      ),
    );
  }
}
