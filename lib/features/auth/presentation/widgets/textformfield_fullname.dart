import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/widgets/custom_textformfield.dart';

class TextformfieldFullname extends StatelessWidget {
  final TextEditingController fullNameController;
  const TextformfieldFullname({super.key, required this.fullNameController});

  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Full name is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextformfield(
        label: "Full Name",
        hintText: "Enter your full name",
        validator: validator,
        controller: fullNameController);
  }
}
