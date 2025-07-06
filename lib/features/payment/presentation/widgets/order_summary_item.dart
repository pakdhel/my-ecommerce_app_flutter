import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/common/widgets/app_spacers.dart';

class OrderSummaryItem extends StatelessWidget {
  final String title;
  final String price;
  final int quantity;
  final String image;
  const OrderSummaryItem(
      {super.key,
      required this.title,
      required this.price,
      required this.quantity,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            image,
            width: 48,
            height: 48,
            fit: BoxFit.cover,
          ),
        ),
        AppSpacers.width8,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 14,
                    color: AppColors.black,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Qty: ${quantity}',
                style: TextStyle(
                    fontSize: 12,
                    color: AppColors.gray,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        AppSpacers.width4,
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 100),
          child: Text(
            'Rp${price}',
            overflow: TextOverflow.ellipsis,
            softWrap: false,
            style: TextStyle(
                color: AppColors.teal,
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
