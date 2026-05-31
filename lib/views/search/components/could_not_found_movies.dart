import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class CouldNotFoundMovies extends StatelessWidget {
  const CouldNotFoundMovies({super.key});

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
            child: Icon(Icons.search_off, color: Colors.grey, size: 50),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Text(
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
              'Sorry , we can not find this movie',
            ),
          ),
        ],
      ),
    );
  }
}
