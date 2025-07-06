import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/common/widgets/app_spacers.dart';

class PaymentOptions extends StatelessWidget {
  final String value;
  final String label;
  final Widget icon;
  final bool selected;
  final ValueChanged<String> onSelected;
  const PaymentOptions(
      {super.key,
      required this.value,
      required this.label,
      required this.icon,
      required this.selected,
      required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSelected(value),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
            border: selected
                ? Border.all(color: AppColors.black)
                : Border.all(color: AppColors.gray.withOpacity(0.2))),
        child: Row(
          children: [
            Radio<String>(
              value: value,
              groupValue: selected ? value : null,
              onChanged: (String? newValue) {
                if (newValue != null) {
                  onSelected(newValue);
                }
              },
              activeColor: AppColors.black,
            ),
            icon,
            AppSpacers.width8,
            Text(
              label,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black),
            )
          ],
        ),
      ),
    );
  }
}
