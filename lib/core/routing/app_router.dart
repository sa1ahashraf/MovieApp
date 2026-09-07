import 'package:flutter/material.dart';
import 'package:movie_app/layout/main_layout.dart';
import 'package:movie_app/views/Edit_Prodfile/edit_profile_view.dart';
import 'package:movie_app/views/details/details_view.dart';
import 'package:movie_app/views/login/login_view.dart';

import 'app_routes.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const MainLayout());

      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginView());

      // case AppRoutes.register:
      //   return MaterialPageRoute(
      //     builder: (_) => const RegisterView(),
      //   );

      // case AppRoutes.forgetPassword:
      //   return MaterialPageRoute(
      //     builder: (_) => const ForgetPasswordView(),
      //   );

      case AppRoutes.details:
        return MaterialPageRoute(builder: (_) => const DetailsView());

      case AppRoutes.editProfile:
        return MaterialPageRoute(builder: (_) => const EditProfileView());

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Route not found'))),
        );
    }
  }
}
