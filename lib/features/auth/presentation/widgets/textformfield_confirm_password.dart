import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:my_ecommerce_app/common/widgets/custom_textformfield.dart';

class TextformfieldConfirmPassword extends StatefulWidget {
  final TextEditingController confirmPasswordController;
  final TextEditingController passwordController;
  const TextformfieldConfirmPassword(
      {super.key,
      required this.passwordController,
      required this.confirmPasswordController});

  @override
  State<TextformfieldConfirmPassword> createState() =>
      _TextformfieldConfirmPassword();
}

class _TextformfieldConfirmPassword
    extends State<TextformfieldConfirmPassword> {
  String? confirmPasswordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Confirm password is required';
    }
    if (value != widget.passwordController.text) {
      print(widget.passwordController.text);
      return 'Password does not match';
    }
    return null;
  }

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextformfield(
      label: "Confirm Password",
      hintText: "Password",
      obscureText: _obscureText,
      icon: IconButton(
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
        icon: Icon(_obscureText ? Iconsax.eye : Iconsax.eye_slash),
      ),
      validator: confirmPasswordValidator,
      controller: widget.confirmPasswordController,
    );
  }
}
