import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';
import 'package:movie_app/views/profile/components/customized_bottom_sheet.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: SizedBox(
          width: 110,
          height: 110,
          child: Stack(
            children: [
              CircleAvatar(
                radius: 55,
                backgroundImage: NetworkImage(
                  'https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg',
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: CircleAvatar(
                  backgroundColor: kprimaryColor,
                  radius: 18,
                  child: const Icon(Icons.edit, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        CustomizedBottomSheet(context);
      },
    );
  }
}
