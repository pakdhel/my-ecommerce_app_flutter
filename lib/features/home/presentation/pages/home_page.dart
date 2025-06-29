import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/common/widgets/app_spacers.dart';
import 'package:my_ecommerce_app/features/home/presentation/widgets/category.dart';
import 'package:my_ecommerce_app/features/home/presentation/widgets/product_carousel.dart';
import 'package:my_ecommerce_app/features/home/presentation/widgets/recommendation_section.dart';
import 'package:my_ecommerce_app/features/home/presentation/widgets/special_offers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final cartCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "TryShop",
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Badge.count(
                  isLabelVisible: cartCounter > 0,
                  count: cartCounter,
                  child: Icon(
                    Icons.shopping_cart,
                    color: AppColors.white,
                    size: 25,
                  ),
                ))
          ],
        ),
        backgroundColor: AppColors.black,
        scrolledUnderElevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          child: Column(
            children: [
              ProductCarousel(),
              AppSpacers.height24,
              Category(),
              AppSpacers.height24,
              SpecialOffers(),
              AppSpacers.height24,
              RecommendationSection()
            ],
          ),
        ),
      ),
    );
  }
}
