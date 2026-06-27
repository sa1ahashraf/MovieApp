import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class DialogHelper {
  static void customDialogMethod(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Logout'),
          content: Text('Are you sure you want logout?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                // code for log out
              },
              child: Text('Confirm', style: TextStyle(color: kprimaryColor)),
            ),
          ],
        );
      },
    );
  }
}
