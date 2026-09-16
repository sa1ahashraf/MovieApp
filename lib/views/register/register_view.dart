import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/cubits/register_cubit/register_cubit.dart';
import 'package:movie_app/cubits/register_cubit/register_states.dart';
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
      body: BlocListener<RegisterCubit, RegisterStates>(
        listener: (context, state) {
          if (state is SuccessState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Check your inbox mail to verify account'),
              ),
            );
          }
          if (state is FailureState) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.errMessage)));
          }
        },
        child: ListView(
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
                    BlocBuilder<RegisterCubit, RegisterStates>(
                      builder: (context, state) {
                        return SignButton(
                          isLoading: state is LoadingState,
                          txt: 'up',
                          onPressed: () async {
                            if (!formKey.currentState!.validate()) return;

                            context.read<RegisterCubit>().registerUser(
                              email: emailController.text.trim(),
                              password: passwordController.text.trim(),
                              username: usernameController.text.trim(),
                            );
                          },
                        );
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
      ),
    );
  }
}
