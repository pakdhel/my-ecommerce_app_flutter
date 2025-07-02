import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/features/cart/presentation/widgets/item_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.black,
        foregroundColor: AppColors.white,
        title: Text(
          "Cart",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        child: Column(
          children: [
            ItemCard(
                image: "assets/images/product/headphone.jpg",
                title: "Wireless Headphone",
                priceDiscount: "130.000",
                priceOriginal: "300.000",
                discount: "30")
          ],
        ),
      )),
    );
  }
}
