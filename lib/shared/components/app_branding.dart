import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class AppBranding extends StatelessWidget {
  final String discrebtion;
  const AppBranding({super.key, this.discrebtion = ''});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: Image.asset('assets/images/Icon.png'),
        ),

        Text('KiK', style: TextStyle(color: kprimaryColor, fontSize: 30)),
        const SizedBox(height: 10),
        Text(discrebtion, style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}
