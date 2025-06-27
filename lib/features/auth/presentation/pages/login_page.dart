import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/common/constants/app_shadows.dart';
import 'package:my_ecommerce_app/common/widgets/app_spacers.dart';
import 'package:my_ecommerce_app/features/auth/presentation/widgets/appbar_logo.dart';
import 'package:my_ecommerce_app/features/auth/presentation/widgets/textformfield_email.dart';
import 'package:my_ecommerce_app/features/auth/presentation/widgets/textformfield_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          statusBarColor: AppColors.black,
          statusBarIconBrightness: Brightness.light),
      child: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              AppBarLogo(
                height: size * 0.3, label: "Welcome back! Please sign in",
              ),
              AppSpacers.height32,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 18, vertical: 24),
                      decoration: BoxDecoration(
                          boxShadow: [AppShadows.shadow1],
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Text(
                            "Sign In",
                            style: TextStyle(
                                color: AppColors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                          ),
                          AppSpacers.height24,
                          Form(
                              key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  TextformfieldEmail(
                                      controller: emailController),
                                  AppSpacers.height24,
                                  TextformfieldPassword(
                                      controller: passwordController),
                                  AppSpacers.height12,
                                  GestureDetector(
                                    child: Text(
                                      "Forgot Password?",
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12),
                                    ),
                                    onTap: () => print("forgot password"),
                                  ),
                                  AppSpacers.height12,
                                  SizedBox(
                                    width: double.infinity,
                                    child: TextButton(
                                        onPressed: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            print("Sign In success");
                                          }
                                        },
                                        child: Text("Sign In")),
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                    AppSpacers.height24,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        AppSpacers.width8,
                        GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, '/signup_page'),
                          child: Text(
                            "Register",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
