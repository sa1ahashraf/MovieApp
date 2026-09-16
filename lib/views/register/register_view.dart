import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/shared/components/app_branding.dart';
import 'package:movie_app/shared/components/copyright_widget.dart';
import 'package:movie_app/shared/components/custom_email_field.dart';
import 'package:movie_app/shared/components/custom_password_field.dart';
import 'package:movie_app/shared/components/customized_container_widget.dart';
import 'package:movie_app/shared/components/default_app_bar.dart';
import 'package:movie_app/shared/components/sing_button.dart';
import 'package:movie_app/views/register/components/already_have_an_acc_widget.dart';
import 'package:movie_app/views/register/components/confirm_password_field.dart';
import 'package:movie_app/views/register/components/username_field.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;
  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

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
            child: CustomizedContainerWidget(
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
                  Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Username'),
                        const SizedBox(height: 6),
                        UsernameField(
                          controller: usernameController,
                          hintText: 'Choose a username',
                          icon: Icon(Icons.person_2_outlined),
                        ),
                        const SizedBox(height: 16),
                        const Text('Email'),
                        const SizedBox(height: 6),
                        CustomEmailField(
                          controller: emailController,
                          hintText: 'name@gmail.com',
                          icon: Icon(Icons.email_outlined),
                        ),
                        const SizedBox(height: 16),
                        const Text('Password'),
                        const SizedBox(height: 9),
                        CustomPasswordField(
                          controller: passwordController,
                          icon: Icon(Icons.lock_outlined),
                          hintText: 'Enter your password',
                        ),
                        const SizedBox(height: 16),
                        const Text(' Confirm Password'),
                        const SizedBox(height: 9),
                        ConfirmPasswordField(
                          controller: passwordController,
                          icon: Icon(Icons.verified_user_outlined),
                          hintText: 'Re-enter your password',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  SignButton(
                    isLoading: isLoading,
                    txt: 'up',
                    onPressed: () async {
                      setState(() {
                        isLoading = true;
                      });
                      if (formKey.currentState!.validate()) {
                        try {
                          final credential = await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                email: emailController.text.trim(),
                                password: passwordController.text,
                              );
                          await credential.user!.sendEmailVerification();

                          if (!mounted) return;

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Account created  successfully , you can login now ',
                              ),
                            ),
                          );
                        } on FirebaseAuthException catch (e) {
                          if (!mounted) return;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(e.message ?? 'Registration failed'),
                            ),
                          );
                        } catch (e) {
                          if (!mounted) return;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Something went wrong')),
                          );
                        } finally {
                          setState(() {
                            isLoading = false;
                          });
                        }
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  AlreadyHaveAnAccWidget(txt: 'Don\'t have an accont ?'),
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
