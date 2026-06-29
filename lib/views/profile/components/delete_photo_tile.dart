import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';
import 'package:movie_app/shared/components/dialog_helper.dart';
import 'package:movie_app/views/profile/components/leading_icon.dart';

class DeletePhotoTile extends StatelessWidget {
  const DeletePhotoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        DialogHelper(
          title: 'Delete photo?',
          content: 'Are you sure you want delete your photo?',
          button_word: 'Delete',
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
          icon: Icons.delete_sharp,
          iconColor: Colors.red,
          radius: 24,
        ),
        title: const Text('Delete photo'),
      ),
    );
  }
}
