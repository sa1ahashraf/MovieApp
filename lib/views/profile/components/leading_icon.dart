import 'package:flutter/material.dart';

class LeadingIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final double radius;
  const LeadingIcon({
    super.key,
    required this.icon,
    required this.iconColor,
    this.radius = 5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: Color(0xffe5edf4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Icon(icon, color: iconColor),
      ),
    );
  }
}
