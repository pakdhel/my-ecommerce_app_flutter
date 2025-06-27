import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:my_ecommerce_app/common/widgets/custom_textformfield.dart';

class TextformfieldPassword extends StatefulWidget {
  final TextEditingController controller;
  const TextformfieldPassword({super.key, required this.controller});

  @override
  State<TextformfieldPassword> createState() => _TextformfieldPasswordState();
}

class _TextformfieldPasswordState extends State<TextformfieldPassword> {
  String? strongPasswordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters.';
    }

    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must have at least one uppercase letter.';
    }

    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return 'Password must have at least one number.';
    }

    if (!RegExp(r'[!@#$%^&*]').hasMatch(value)) {
      return 'Password must have at least one special character.';
    }

    return null;
  }

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextformfield(
      label: "Password",
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
      controller: widget.controller,
      validator: strongPasswordValidator,
    );
  }
}
