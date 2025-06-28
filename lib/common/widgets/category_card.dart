import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/common/widgets/app_spacers.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String image;
  const CategoryCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset.zero,
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: AppColors.gray.withOpacity(0.25))
              ]),
          child: Image.asset(
            image,
            width: 30,
          ),
        ),
        AppSpacers.height8,
        Text(
          title,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
