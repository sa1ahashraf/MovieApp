import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';
import 'package:movie_app/views/login/components/custom_email_field.dart';
import 'package:movie_app/views/login/components/custom_password_field.dart';
import 'package:movie_app/views/login/components/forget_pass_widget.dart';
import 'package:movie_app/views/login/components/have_an_account_widget.dart';
import 'package:movie_app/views/login/components/sing_in_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Center(
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset('assets/images/Icon.png'),
              ),
            ),
            Text('KiK', style: TextStyle(color: kprimaryColor, fontSize: 30)),
            const SizedBox(height: 10),
            const Text(
              'Your Gate to the world\'s finest cinema ',
              style: TextStyle(color: Colors.grey),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
              child: Container(
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Email Address'),
                      CustomEmailField(
                        hintText: 'name@gmail.com',
                        icon: Icon(Icons.email_outlined),
                      ),
                      const SizedBox(height: 30),
                      const Text('Password'),
                      CustomPasswordField(
                        hintText: 'Enter Your Password',
                        icon: Icon(Icons.email_outlined),
                      ),
                      Align(
                        alignment: AlignmentGeometry.centerRight,
                        child: ForgetPassWidget(),
                      ),
                      SizedBox(height: 10),
                      Center(child: SignInButton()),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            HaveAnAccountWidget(),
          ],
        ),
      ),
    );
  }
}
