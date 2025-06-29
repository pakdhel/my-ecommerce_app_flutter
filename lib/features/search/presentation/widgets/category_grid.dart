import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/widgets/category_card.dart';
import 'package:simple_grid/simple_grid.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SpGrid(
      alignment: WrapAlignment.center,
      spacing: 8,
      runSpacing: 10,
      children: [
        SpGridItem(
          xs: 3,
          sm: 2,
          md: 2,
          lg: 1,
          child: CategoryCard(
              title: "Electronics",
              image: "assets/images/category/electronics.png"),
        ),
        SpGridItem(
          xs: 3,
          sm: 2,
          md: 2,
          lg: 1,
          child: CategoryCard(
              title: "Accessories",
              image: "assets/images/category/accessories.png"),
        ),
        SpGridItem(
          xs: 3,
          sm: 2,
          md: 2,
          lg: 1,
          child: CategoryCard(
              title: "Furnitures",
              image: "assets/images/category/furniture.png"),
        ),
        SpGridItem(
          xs: 3,
          sm: 2,
          md: 2,
          lg: 1,
          child: CategoryCard(
              title: "Clothes", image: "assets/images/category/clothes.png"),
        ),
        SpGridItem(
          xs: 3,
          sm: 2,
          md: 2,
          lg: 1,
          child: CategoryCard(
              title: "Sports", image: "assets/images/category/sport.png"),
        ),
        SpGridItem(
          xs: 3,
          sm: 2,
          md: 2,
          lg: 1,
          child: CategoryCard(
              title: "Books", image: "assets/images/category/book.png"),
        ),
      ],
    );
  }
}
