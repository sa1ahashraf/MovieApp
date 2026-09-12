import 'package:flutter/material.dart';
import 'package:movie_app/shared/components/app_branding.dart';
import 'package:movie_app/shared/components/copyright_widget.dart';
import 'package:movie_app/shared/components/custom_email_field.dart';
import 'package:movie_app/shared/components/custom_password_field.dart';
import 'package:movie_app/shared/components/default_app_bar.dart';
import 'package:movie_app/shared/components/sing_button.dart';
import 'package:movie_app/views/register/components/already_have_an_acc_widget.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: DefaultAppBar(isArrowActive: true),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 30),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    color: Colors.black.withValues(alpha: 0.08),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: AppBranding()),
                  Center(
                    child: const Text(
                      'Join kik and start your journey',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 35),
                  const Text('Username'),
                  const SizedBox(height: 6),
                  CustomEmailField(
                    hintText: 'Choose a username',
                    icon: Icon(Icons.person_2_outlined),
                  ),
                  const SizedBox(height: 16),
                  const Text('Email'),
                  const SizedBox(height: 6),
                  CustomEmailField(
                    hintText: 'Username',
                    icon: Icon(Icons.email_outlined),
                  ),
                  const SizedBox(height: 16),
                  const Text('Password'),
                  const SizedBox(height: 9),
                  CustomPasswordField(
                    icon: Icon(Icons.lock_outlined),
                    hintText: 'Enter your password',
                  ),
                  const SizedBox(height: 16),
                  const Text(' Confirm Password'),
                  const SizedBox(height: 9),
                  CustomPasswordField(
                    icon: Icon(Icons.verified_user_outlined),
                    hintText: 'Re-enter your password',
                  ),
                  const SizedBox(height: 50),
                  SignButton(txt: 'up'),
                  const SizedBox(height: 20),
                  AlreadyHaveAnAccWidget(),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            child: CopyrightWidget(),
          ),
        ],
      ),
    );
  }
}
