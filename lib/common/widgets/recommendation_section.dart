import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/common/widgets/product_card.dart';
import 'package:my_ecommerce_app/domain/product.dart';

class RecommendationSection extends StatelessWidget {
  const RecommendationSection({super.key});

  static final List<Product> products = [
    Product(
        imageUrl: "assets/images/product/macbook.jpg",
        title: "Macbook Pro",
        price: "20.999.999",
        rating: "4.3"),
    Product(
        imageUrl:
            "assets/images/product/jacket.jpg", // Ganti dengan path gambar Anda
        title: "Jacket",
        price: "129.000",
        rating: "4.5"),
    Product(
        imageUrl:
            "assets/images/product/bed.jpg", // Ganti dengan path gambar Anda
        title: "Bed Premium",
        price: "129.000",
        rating: "4.5"),
    Product(
        imageUrl:
            "assets/images/product/Sofa.jpg", // Ganti dengan path gambar Anda
        title: "Sofa",
        price: "129.000",
        rating: "4.5"),
    Product(
        imageUrl:
            "assets/images/product/workout.jpg", // Ganti dengan path gambar Anda
        title: "Workout Sets",
        price: "129.000",
        rating: "4.5"),
    Product(
        imageUrl:
            "assets/images/product/atomic_habits.jpg", // Ganti dengan path gambar Anda
        title: "Atomic Habits",
        price: "129.000",
        rating: "4.5"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Recommendation",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            TextButton(
                onPressed: () {
                  print("button ditekan");
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent)),
                child: Text(
                  "View All",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.gold),
                ))
          ],
        ),
        GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.85,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ProductCard(
                  image: product.imageUrl,
                  title: product.title,
                  price: product.price,
                  rating: product.rating);
            })
      ],
    );
  }
}
