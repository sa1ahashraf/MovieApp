import 'package:flutter/material.dart';

class LeadingIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  const LeadingIcon({super.key, required this.icon, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xffe5edf4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Icon(icon, color: iconColor),
      ),
    );
  }
}
