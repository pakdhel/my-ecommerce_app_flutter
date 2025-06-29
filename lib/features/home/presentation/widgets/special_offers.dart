import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/common/widgets/product_card.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Special Offers",
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
                  "See All",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.gold),
                ))
          ],
        ),
        SizedBox(
          height: 230,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(
                width: 180,
                child: ProductCard(
                    image: "assets/images/product/headphone.jpg",
                    title: "Wireless Headphones",
                    price: "129.000",
                    rating: "4.5"),
              ),
              SizedBox(
                width: 180,
                child: ProductCard(
                    image: "assets/images/product/phone.jpg",
                    title: "Mobile Phone",
                    price: "11.129.000",
                    rating: "4.9"),
              ),
              SizedBox(
                width: 180,
                child: ProductCard(
                    image: "assets/images/product/shoes.jpg",
                    title: "Running Shoes",
                    price: "329.000",
                    rating: "4.9"),
              ),
              SizedBox(
                width: 180,
                child: ProductCard(
                    image: "assets/images/product/watch.jpg",
                    title: "Classic Watch",
                    price: "2.300.000",
                    rating: "4.9"),
              ),
            ],
          ),
        )
      ],
    );
  }
}
