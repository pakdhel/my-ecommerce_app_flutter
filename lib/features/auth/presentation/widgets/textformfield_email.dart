import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/widgets/custom_textformfield.dart';

class TextformfieldEmail extends StatelessWidget {
  final TextEditingController controller;
  const TextformfieldEmail({super.key, required this.controller});

  String? validatorEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Email is not valid';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextformfield(
      label: "Email",
      hintText: "you@gmail.com",
      validator: validatorEmail,
      controller: controller,
    );
  }
}
