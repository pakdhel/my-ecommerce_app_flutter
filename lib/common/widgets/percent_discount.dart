import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';

class PercentDiscount extends StatelessWidget {
  final String percent;
  const PercentDiscount({super.key, required this.percent});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.red.withOpacity(0.2),
          borderRadius: BorderRadius.circular(100)),
      child: Row(
        children: [
          Text(
            "Save",
            style: TextStyle(
                color: AppColors.red, fontSize: 8, fontWeight: FontWeight.w500),
          ),
          Text(
            percent,
            style: TextStyle(
                color: AppColors.red, fontSize: 8, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
