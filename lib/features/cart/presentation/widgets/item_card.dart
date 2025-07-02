import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/common/widgets/app_spacers.dart';
import 'package:my_ecommerce_app/common/widgets/percent_discount.dart';
import 'package:my_ecommerce_app/common/widgets/price_text.dart';

class ItemCard extends StatefulWidget {
  final String image;
  final String title;
  final String priceDiscount;
  final String priceOriginal;
  final String discount;
  const ItemCard(
      {super.key,
      required this.image,
      required this.title,
      required this.priceDiscount,
      required this.priceOriginal,
      required this.discount});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  int counter = 1;
  bool isChecked = false;

  void _addCounter() {
    setState(() {
      counter++;
    });

    print(counter);
  }

  void _removeCounter() {
    setState(() {
      if (counter > 1) {
        counter--;
      } else {
        print("remove");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Checkbox(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              value: isChecked,
              checkColor: AppColors.white,
              activeColor: AppColors.black,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  widget.image,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            AppSpacers.width8,
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                child: SizedBox(
                  height: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                PriceText(
                                  value: widget.priceDiscount,
                                  color: AppColors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                                PriceText(
                                  value: widget.priceOriginal,
                                  color: AppColors.gray,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  isStrikethrough: true,
                                ),
                                AppSpacers.height4,
                                PercentDiscount(percent: widget.discount)
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 32,
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: AppColors.gray)),
                            child: Row(
                              children: [
                                InkWell(
                                  borderRadius: BorderRadius.circular(100),
                                  onTap: () => _removeCounter(),
                                  child: counter > 1
                                      ? Icon(
                                          Icons.remove,
                                          size: 24,
                                        )
                                      : Icon(
                                          Icons.delete_outline,
                                          size: 24,
                                        ),
                                ),
                                Expanded(
                                  child: Text(
                                    "$counter",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12, color: AppColors.black),
                                  ),
                                ),
                                InkWell(
                                  borderRadius: BorderRadius.circular(100),
                                  onTap: () => _addCounter(),
                                  child: Icon(
                                    Icons.add,
                                    size: 24,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
