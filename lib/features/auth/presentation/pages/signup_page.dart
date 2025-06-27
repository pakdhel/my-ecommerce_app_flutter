import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/common/constants/app_shadows.dart';
import 'package:my_ecommerce_app/common/widgets/app_spacers.dart';
import 'package:my_ecommerce_app/features/auth/presentation/widgets/appbar_logo.dart';
import 'package:my_ecommerce_app/features/auth/presentation/widgets/textformfield_confirm_password.dart';
import 'package:my_ecommerce_app/features/auth/presentation/widgets/textformfield_email.dart';
import 'package:my_ecommerce_app/features/auth/presentation/widgets/textformfield_fullname.dart';
import 'package:my_ecommerce_app/features/auth/presentation/widgets/textformfield_password.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final TapGestureRecognizer _recognizerPolicy = TapGestureRecognizer();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 24),
        child: Column(
          children: [
            AppBarLogo(
              height: 0.3 * height,
              label: "Join us and start shopping today!",
            ),
            AppSpacers.height32,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 24),
                    decoration: BoxDecoration(
                        boxShadow: [AppShadows.shadow1],
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Text(
                          "Create Account",
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
                                TextformfieldFullname(
                                    fullNameController: fullNameController),
                                AppSpacers.height24,
                                TextformfieldEmail(controller: emailController),
                                AppSpacers.height24,
                                TextformfieldPassword(
                                    controller: passwordController),
                                AppSpacers.height24,
                                TextformfieldConfirmPassword(
                                    passwordController: passwordController,
                                    confirmPasswordController:
                                        confirmPasswordController),
                                AppSpacers.height12,
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Checkbox(
                                      activeColor: Colors.blueAccent,
                                      value: isChecked,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked = value!;
                                        });
                                      },
                                    ),
                                    Expanded(
                                      child: RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: AppColors.gray),
                                          children: [
                                            const TextSpan(
                                                text: "I agree to the "),
                                            TextSpan(
                                              text:
                                                  "Terms of Service and Privacy Policy.",
                                              style: TextStyle(
                                                  color: AppColors.black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500),
                                              recognizer: _recognizerPolicy
                                                ..onTap = () {
                                                  // Navigasi ke halaman syarat
                                                },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                AppSpacers.height12,
                                SizedBox(
                                  width: double.infinity,
                                  child: TextButton(
                                      onPressed: () {
                                        if (_formKey.currentState!.validate() &&
                                            isChecked) {
                                          print("Sign Up success");
                                        } else {
                                          print("Sign Up failed");
                                        }
                                      },
                                      child: Text("Sign Up")),
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
                        "Already have an account? ",
                        style: TextStyle(fontSize: 14),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/login_page');
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 14),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
