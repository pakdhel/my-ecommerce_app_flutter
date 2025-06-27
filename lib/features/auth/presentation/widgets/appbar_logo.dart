import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/common/constants/app_shadows.dart';

class AppBarLogo extends StatelessWidget {
  final height;
  final label;
  const AppBarLogo({super.key, required this.height, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
          color: AppColors.black,
          boxShadow: [AppShadows.shadow2],
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/logos/trans_bg_1.png",
            width: 148,
          ),
          Text(
            label,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColors.white,
                fontSize: 16),
          )
        ],
      ),
    );
  }
}
