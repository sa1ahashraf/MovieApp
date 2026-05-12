import 'package:flutter/material.dart';

class ActorPhoto extends StatelessWidget {
  const ActorPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.grey.withAlpha(200),
          backgroundImage: NetworkImage(
            "https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg",
          ),
        ),
        const Text('sa1ah ashraf'),
      ],
    );
  }
}
