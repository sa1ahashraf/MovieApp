import 'package:flutter/material.dart';

class CopyrightWidget extends StatelessWidget {
  const CopyrightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.copyright_outlined, color: Colors.grey),
        const SizedBox(width: 4),
        const Text(
          '2026 Kik ,  All rights reserved',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
