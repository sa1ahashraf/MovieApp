import 'package:flutter/material.dart';
import 'package:movie_app/shared/components/custom_text.dart';
import 'package:movie_app/shared/components/movire_type.dart';
import 'package:movie_app/shared/components/rate_style.dart';

class CustomPositioned extends StatelessWidget {
  const CustomPositioned({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 350,
      left: 20,
      right: 20,
      child: Container(
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(34),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 90, child: MovieType()),
            const SizedBox(height: 14),
            Customtext(text: "Batman return"),
            const SizedBox(height: 14),
            Row(
              children: [
                Ratesyle(),
                const SizedBox(width: 30),
                Text('${DateTime.now().year}'),
                const SizedBox(width: 30),
                Text("2.4h"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
