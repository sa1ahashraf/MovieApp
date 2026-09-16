import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/routing/app_routes.dart';
import 'package:movie_app/cubits/login_cubit/login_cubit.dart';
import 'package:movie_app/cubits/login_cubit/login_states.dart';
import 'package:movie_app/shared/components/app_branding.dart';
import 'package:movie_app/shared/components/custom_email_field.dart';
import 'package:movie_app/shared/components/custom_password_field.dart';
import 'package:movie_app/shared/components/customized_container_widget.dart';
import 'package:movie_app/views/login/components/forget_pass_widget.dart';
import 'package:movie_app/views/login/components/have_an_account_widget.dart';
import 'package:movie_app/shared/components/sing_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final formkey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: BlocListener<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is VerifiedState) {
              Navigator.pushReplacementNamed(context, AppRoutes.home);
            }
            if (state is NotVerifiedState) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Email not verified yet')));
            }
            if (state is FailureState) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.errMessage)));
            }
          },
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
                          Form(
                            key: formkey,
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
                              ],
                            ),
                          ),
                          Align(
                            alignment: AlignmentGeometry.centerRight,
                            child: ForgetPassWidget(),
                          ),

                          BlocBuilder<LoginCubit, LoginState>(
                            builder: (context, state) {
                              return Center(
                                child: SignButton(
                                  isLoading: state is LoadingState,
                                  txt: 'in',
                                  onPressed: () {
                                    if (!formkey.currentState!.validate()) {
                                      return;
                                    }

                                    context.read<LoginCubit>().loginUser(
                                      email: emailController.text.trim(),
                                      password: passwordController.text.trim(),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
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
      ),
    );
  }
}
