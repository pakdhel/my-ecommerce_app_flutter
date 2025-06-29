import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      hintText: "Search",
      hintStyle: TextStyle(color: AppColors.black, fontSize: 14),
      suffixIcon: GestureDetector(
        child: Icon(
          Icons.search,
          size: 20,
          color: AppColors.black,
        ),
      ),
      isDense: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.black)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.black)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.black)),
    ));
  }
}
