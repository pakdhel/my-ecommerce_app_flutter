import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/common/widgets/app_spacers.dart';

class SearchHistory extends StatelessWidget {
  final String history;
  const SearchHistory({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.history,
          size: 20,
          color: AppColors.black,
        ),
        AppSpacers.width8,
        Text(
          history,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
