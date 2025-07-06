import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/common/widgets/app_spacers.dart';
import 'package:my_ecommerce_app/common/widgets/price_text.dart';
import 'package:my_ecommerce_app/common/widgets/recommendation_section.dart';
import 'package:my_ecommerce_app/features/cart/presentation/widgets/item_card.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool isChecked = false;
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.black,
        foregroundColor: AppColors.white,
        title: Text(
          "My Cart",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
              child: Column(
                children: [
                  ItemCard(
                      image: "assets/images/product/headphone.jpg",
                      title: "Wireless Headphone",
                      priceDiscount: "130.000",
                      priceOriginal: "300.000",
                      discount: "30"),
                  ItemCard(
                      image: "assets/images/product/jacket.jpg",
                      title: "Jacket Premium",
                      priceDiscount: "530.000",
                      priceOriginal: "899.000",
                      discount: "30"),
                  AppSpacers.height24,
                  RecommendationSection(),
                ],
              ),
            ),
          ),
          Container(
              width: double.infinity,
              height: 64,
              padding: EdgeInsets.symmetric(horizontal: 18),
              decoration: BoxDecoration(color: AppColors.black),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Checkbox(
                      value: isChecked,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      checkColor: AppColors.white,
                      activeColor: AppColors.gold,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      }),
                  Text(
                    "Select All",
                    style: TextStyle(color: AppColors.white),
                  ),
                  Expanded(
                    child: PriceText(
                      value: "33.000",
                      color: AppColors.white,
                      fontSize: 16,
                      textAlign: TextAlign.end,
                    ),
                  ),
                  AppSpacers.width12,
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/payment_page');
                      },
                      child: Text("Buy ($quantity)"))
                ],
              )),
        ],
      )),
    );
  }
}
