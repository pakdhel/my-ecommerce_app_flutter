import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/common/widgets/app_spacers.dart';
import 'package:my_ecommerce_app/common/widgets/percent_discount.dart';

class WishlistCard extends StatelessWidget {
  final String image;
  final String title;
  final String priceDiscount;
  final String priceOriginal;
  final String discount;
  const WishlistCard(
      {super.key,
      required this.image,
      required this.title,
      required this.priceDiscount,
      required this.priceOriginal,
      required this.discount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: AppColors.black, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          ClipRRect(
              child: Image.asset(
            image,
            width: 103,
            height: 103,
            fit: BoxFit.cover,
          )),
          AppSpacers.width12,
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.white),
              ),
              Row(
                children: [
                  Text(
                    priceDiscount,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    priceOriginal,
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.lineThrough),
                  ),
                  PercentDiscount(percent: "20%")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
