import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/cubits/forgot_password_cubit/forgot_password_cubit.dart';
import 'package:movie_app/cubits/login_cubit/login_cubit.dart';
import 'package:movie_app/cubits/register_cubit/register_cubit.dart';
import 'package:movie_app/layout/main_layout.dart';
import 'package:movie_app/views/Edit_Prodfile/edit_profile_view.dart';
import 'package:movie_app/views/details/details_view.dart';
import 'package:movie_app/views/forgot_password/forgot_password_view.dart';
import 'package:movie_app/views/login/login_view.dart';
import 'package:movie_app/views/register/register_view.dart';

import 'app_routes.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const MainLayout());

      case AppRoutes.login:
        return MaterialPageRoute(
          builder: (_) =>
              BlocProvider(create: (_) => LoginCubit(), child: LoginView()),
        );

      case AppRoutes.register:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => RegisterCubit(),
            child: const RegisterView(),
          ),
        );

      case AppRoutes.forgetPassword:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => ForgotPasswordCubit(),
            child: const ForgotPasswordView(),
          ),
        );

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
