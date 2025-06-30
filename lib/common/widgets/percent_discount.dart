import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';

class PercentDiscount extends StatelessWidget {
  final String percent;
  const PercentDiscount({super.key, required this.percent});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 228, 228, 1),
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
