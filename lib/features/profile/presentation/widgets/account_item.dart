import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/common/widgets/app_spacers.dart';

class AccountItem extends StatelessWidget {
  final String icon;
  final Color iconColor;
  final String nameItem;
  final String desc;
  final VoidCallback? onTap;
  const AccountItem(
      {super.key,
      required this.icon,
      required this.iconColor,
      required this.nameItem,
      required this.desc,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(100),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: iconColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Iconify(
              icon,
              size: 24,
              color: iconColor,
            ),
          ),
          AppSpacers.width16,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nameItem,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black),
                ),
                Text(
                  desc,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.gray),
                )
              ],
            ),
          ),
          Iconify(
              size: 24,
              color: AppColors.gray,
              '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" d="M11.273 3.687a1 1 0 1 1 1.454-1.374l8.5 9a1 1 0 0 1 0 1.374l-8.5 9.001a1 1 0 1 1-1.454-1.373L19.125 12z"/></svg>')
        ],
      ),
    );
  }
}
