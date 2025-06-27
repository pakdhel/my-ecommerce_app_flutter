import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/widgets/app_spacers.dart';

class CustomTextformfield extends StatelessWidget {
  final String label;
  final String? hintText;
  final Widget? icon;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;

  const CustomTextformfield({
    super.key,
    required this.label,
    this.hintText,
    this.icon,
    this.validator,
    this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        AppSpacers.height8,
        TextFormField(
          controller: controller,
          validator: validator,
          obscureText: obscureText,
          decoration: InputDecoration(
              hintText: hintText,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              suffixIcon: icon),
        ),
        // ),
      ],
    );
  }
}
