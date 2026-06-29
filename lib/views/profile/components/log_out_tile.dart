import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';
import 'package:movie_app/shared/components/dialog_helper.dart';
import 'package:movie_app/views/profile/components/leading_icon.dart';

class LogOutTile extends StatelessWidget {
  const LogOutTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        DialogHelper(
          title: 'Confirm Logout',
          content: 'Are you sure you want logout?',
          button_word: 'confirm',
        ).customDialogMethod(context);
      },
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: kbackGroundListTileColor,
        leading: LeadingIcon(
          icon: Icons.logout_outlined,
          iconColor: Colors.red,
        ),
        title: const Text('LogOut', style: TextStyle(color: Colors.red)),
      ),
    );
  }
}
