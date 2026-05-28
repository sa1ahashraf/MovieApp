import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class WatchListCotainer extends StatelessWidget {
  const WatchListCotainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffe5edf4),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Text(
                'WatchList',
                style: TextStyle(color: Colors.black.withAlpha(110)),
              ),
              Text(
                '21',
                style: TextStyle(
                  color: kprimaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
