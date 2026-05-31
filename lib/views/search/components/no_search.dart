import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class NoSearchWidget extends StatelessWidget {
  const NoSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: kbackgroundFieldsColor,
            child: Icon(
              Icons.movie_filter_outlined,
              color: Colors.grey,
              size: 50,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text("Start Discovering"),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Text(
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
              'Search for your favorite movies to get started.',
            ),
          ),
        ],
      ),
    );
  }
}
