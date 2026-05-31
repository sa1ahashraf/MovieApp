import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';
import 'package:movie_app/shared/components/custom_text.dart';
import 'package:movie_app/views/profile/components/change_photo_tile.dart';
import 'package:movie_app/views/profile/components/delete_photo_tile.dart';
import 'package:movie_app/views/profile/components/preview_photo_tile.dart';

Future<void> CustomizedBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: kbackGroundListTileColor,
    context: context,
    showDragHandle: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.vertical(top: Radius.circular(24)),
    ),
    builder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Customtext(text: 'Profile picture management'),
          Previewphoto(),
          ChangePhotoTile(),
          DeletePhotoTile(),
        ],
      );
    },
  );
}
