import 'package:flutter/material.dart';
import 'package:movie_app/core/routes/app_routes.dart';
import 'package:movie_app/views/Edit_Prodfile/edit_profile_view.dart';
import 'package:movie_app/views/details/details_view.dart';
import 'package:movie_app/views/home/home_view.dart';
import 'package:movie_app/views/watchlist/watch_list_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeView());

      case AppRoutes.editProfile:
        return MaterialPageRoute(builder: (_) => const EditProfileView());
      case AppRoutes.movieDetails:
        return MaterialPageRoute(builder: (_) => const DetailsView());
      case AppRoutes.watchList:
        return MaterialPageRoute(builder: (_) => const WatchListView());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Page Not Found'))),
        );
    }
  }
}
