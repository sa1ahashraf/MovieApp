import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';

class DialogHelper {
  final String title;
  final String content;
  final String button_word;

  DialogHelper({required this.title, required this.content, required this.button_word});
  void customDialogMethod(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel', style: TextStyle(color: kprimaryColor)),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                // code for log out
              },
              child: Text(button_word, style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }
}
