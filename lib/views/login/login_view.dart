import 'package:flutter/material.dart';
import 'package:movie_app/shared/components/app_branding.dart';
import 'package:movie_app/shared/components/custom_email_field.dart';
import 'package:movie_app/shared/components/custom_password_field.dart';
import 'package:movie_app/shared/components/customized_container_widget.dart';
import 'package:movie_app/views/login/components/forget_pass_widget.dart';
import 'package:movie_app/views/login/components/have_an_account_widget.dart';
import 'package:movie_app/shared/components/sing_button.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Center(
                child: AppBranding(
                  discrebtion: 'Your Gate to the finest\'s cinema',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
                child: CustomizedContainerWidget(
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
                          controller: emailController,
                          hintText: 'name@gmail.com',
                          icon: Icon(Icons.email_outlined),
                        ),
                        const SizedBox(height: 30),
                        const Text('Password'),
                        CustomPasswordField(
                          controller: passwordController,
                          hintText: 'Enter Your Password',
                          icon: Icon(Icons.email_outlined),
                        ),
                        Align(
                          alignment: AlignmentGeometry.centerRight,
                          child: ForgetPassWidget(),
                        ),

                        Center(child: SignButton(txt: 'in')),
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
      ),
    );
  }
}
