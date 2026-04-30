import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class DefaultAppBar extends StatelessWidget {
  final IconButton? leadingicn;

  const DefaultAppBar({super.key, this.leadingicn});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: AppBar(
        backgroundColor: kbarColor,
        leading: leadingicn,
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            "Kik Movies",
            style: TextStyle(color: kprimaryColor, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
