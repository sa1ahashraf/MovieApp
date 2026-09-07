import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/routing/app_router.dart';
import 'package:movie_app/core/routing/app_routes.dart';

void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.login,
      onGenerateRoute: AppRouter.generateRoute,
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
    );
  }
}
