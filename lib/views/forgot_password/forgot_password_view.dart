import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';
import 'package:movie_app/shared/components/app_branding.dart';
import 'package:movie_app/shared/components/copyright_widget.dart';
import 'package:movie_app/shared/components/customized_container_widget.dart';
import 'package:movie_app/shared/components/default_app_bar.dart';
import 'package:movie_app/views/forgot_password/components/forgot_password_field.dart';
import 'package:movie_app/views/forgot_password/components/reset_link_button.dart';
import 'package:movie_app/views/register/components/already_have_an_acc_widget.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf8f9fb),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: DefaultAppBar(isArrowActive: true),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: CustomizedContainerWidget(
                  child: Column(
                    children: [
                      const AppBranding(),
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: kprimaryColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          bottom: 30,
                          left: 15,
                          right: 10,
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Enter the email associated with your account and we\'ll send you an instruction link to reset your password',
                          style: TextStyle(
                            color: Colors.black.withAlpha(120),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: const Text('Email Address'),
                      ),
                      const SizedBox(height: 5),
                      ForgotPasswordField(
                        icon: Icons.email_outlined,
                        hintText: 'name@example.com',
                      ),
                      const SizedBox(height: 20),
                      const ResetLinkButton(),
                      AlreadyHaveAnAccWidget(txt: 'Remember your password?'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 40,
                ),
                child: CopyrightWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
