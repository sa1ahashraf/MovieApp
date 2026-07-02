import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class SecurityNoteCard extends StatelessWidget {
  const SecurityNoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: kbackgroundFieldsColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      leading: Icon(Icons.security_outlined, color: kprimaryColor),
      title: const Text('Security Note'),
      subtitle: const Text(
        'Changing yout email address will require re-verfication to maintain account security',
      ),
    );
  }
}
