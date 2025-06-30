import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
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
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                image,
                width: 103,
                height: 103,
                fit: BoxFit.cover,
              )),
          AppSpacers.width12,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white),
                ),
                AppSpacers.height4,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Rp",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white),
                    ),
                    Text(
                      priceDiscount,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white),
                    ),
                    AppSpacers.width4,
                    Text(
                      "Rp",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: AppColors.gray,
                          color: AppColors.gray),
                    ),
                    Text(
                      priceOriginal,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: AppColors.gray,
                          color: AppColors.gray),
                    ),
                    AppSpacers.width4,
                    PercentDiscount(percent: "20%")
                  ],
                ),
                AppSpacers.height4,
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Add to Cart"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.black,
                          foregroundColor: AppColors.gold,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: AppColors.gold),
                              borderRadius: BorderRadius.circular(10))),
                    )),
                    IconButton(
                        onPressed: () {},
                        icon: Iconify(
                            color: AppColors.white,
                            '<svg xmlns="http://www.w3.org/2000/svg" width="512" height="512" viewBox="0 0 512 512"><path fill="none" d="M296 64h-80a7.91 7.91 0 0 0-8 8v24h96V72a7.91 7.91 0 0 0-8-8"/><path fill="currentColor" d="M432 96h-96V72a40 40 0 0 0-40-40h-80a40 40 0 0 0-40 40v24H80a16 16 0 0 0 0 32h17l19 304.92c1.42 26.85 22 47.08 48 47.08h184c26.13 0 46.3-19.78 48-47l19-305h17a16 16 0 0 0 0-32M192.57 416H192a16 16 0 0 1-16-15.43l-8-224a16 16 0 1 1 32-1.14l8 224A16 16 0 0 1 192.57 416M272 400a16 16 0 0 1-32 0V176a16 16 0 0 1 32 0Zm32-304h-96V72a7.91 7.91 0 0 1 8-8h80a7.91 7.91 0 0 1 8 8Zm32 304.57A16 16 0 0 1 320 416h-.58A16 16 0 0 1 304 399.43l8-224a16 16 0 1 1 32 1.14Z"/></svg>'))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
