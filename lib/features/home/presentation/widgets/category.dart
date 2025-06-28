import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_ecommerce_app/common/widgets/app_spacers.dart';
import 'package:my_ecommerce_app/common/widgets/category_card.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categories",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        AppSpacers.height16,
        SizedBox(
          height: 87,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CategoryCard(
                  title: "Electronics",
                  image: "assets/images/category/electronics.png"),
              AppSpacers.width24,
              CategoryCard(
                  title: "Accessories",
                  image: "assets/images/category/accessories.png"),
              AppSpacers.width24,
              CategoryCard(
                  title: "Furnitures",
                  image: "assets/images/category/furniture.png"),
              AppSpacers.width24,
              CategoryCard(
                  title: "Clothes",
                  image: "assets/images/category/clothes.png"),
              AppSpacers.width24,
              CategoryCard(
                  title: "Sports", image: "assets/images/category/sport.png"),
              AppSpacers.width24,
              CategoryCard(
                  title: "Books", image: "assets/images/category/book.png"),
            ],
          ),
        )
      ],
    );
  }
}
