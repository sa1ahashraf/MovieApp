import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';
import 'package:movie_app/views/Edit_Prodfile/edit_profile_view.dart';
import 'package:movie_app/views/profile/components/leading_icon.dart';

class EditProfileTile extends StatelessWidget {
  const EditProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => EditProfileView()));
      },
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        tileColor: kbackGroundListTileColor,
        leading: LeadingIcon(
          icon: Icons.person_outlined,
          iconColor: kprimaryColor,
        ),
        title: const Text('Edit Profile'),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_forward_ios, color: Colors.grey),
        ),
      ),
    );
  }
}
