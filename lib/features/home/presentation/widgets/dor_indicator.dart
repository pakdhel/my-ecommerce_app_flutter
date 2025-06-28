import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';

class DotIndicator extends StatelessWidget {
  final double height, width;
  final EdgeInsets? margin;
  final bool isActive;
  const DotIndicator(
      {super.key,
      this.height = 6,
      this.width = 8,
      this.margin = const EdgeInsets.symmetric(horizontal: 8),
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      height: height,
      width: isActive ? width * 2 : width,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isActive ? AppColors.gray : Color.fromRGBO(217, 217, 217, 1),
      ),
    );
  }
}
