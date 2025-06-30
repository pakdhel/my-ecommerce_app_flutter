import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/common/widgets/custom_appbar.dart';
import 'package:my_ecommerce_app/common/widgets/product_card.dart';
import 'package:my_ecommerce_app/domain/product.dart';
import 'package:my_ecommerce_app/features/wishlist/domain/wishlist.dart';
import 'package:my_ecommerce_app/features/wishlist/presentation/widgets/wishlist_card.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  final List<Wishlist> wishlists = [
    Wishlist(
        title: "Long Sleeve Premium Jacket",
        priceDiscount: "350.000",
        priceOriginal: "500.000",
        image: "assets/images/product/jacket.jpg",
        discount: "20%"),
    Wishlist(
        title: "Good Quality King Promax Bed for New Couple",
        priceDiscount: "350.000",
        priceOriginal: "500.000",
        image: "assets/images/product/bed.jpg",
        discount: "20%"),
    Wishlist(
        title: "Workout sets for Beginner",
        priceDiscount: "350.000",
        priceOriginal: "500.000",
        image: "assets/images/product/workout.jpg",
        discount: "20%"),
  ];

  final List<Product> products = [
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
    return Scaffold(
      appBar: CustomAppbar(title: "Wishlist", cartCounter: 0),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 24),
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: wishlists.length,
                itemBuilder: (context, index) {
                  final wishlist = wishlists[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: WishlistCard(
                        image: wishlist.image,
                        title: wishlist.title,
                        priceDiscount: wishlist.priceDiscount,
                        priceOriginal: wishlist.priceOriginal,
                        discount: wishlist.discount),
                  );
                }),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommendation",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return SizedBox(
                          width: 180,
                          child: ProductCard(
                              image: product.imageUrl,
                              title: product.title,
                              price: product.price,
                              rating: product.rating),
                        );
                      }),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
