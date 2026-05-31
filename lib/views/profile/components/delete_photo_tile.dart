import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';
import 'package:movie_app/views/profile/components/leading_icon.dart';

class DeletePhotoTile extends StatelessWidget {
  const DeletePhotoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      tileColor: kbackGroundListTileColor,
      leading: LeadingIcon(
        icon: Icons.delete_sharp,
        iconColor: Colors.red,
        radius: 24,
      ),
      title: const Text('Delete photo'),
    );
  }
}
