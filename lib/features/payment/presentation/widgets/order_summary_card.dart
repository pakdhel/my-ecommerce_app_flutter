import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/common/widgets/app_spacers.dart';
import 'package:my_ecommerce_app/features/payment/presentation/widgets/order_summary_item.dart';

class OrderSummeryCard extends StatefulWidget {
  const OrderSummeryCard({super.key});

  @override
  State<OrderSummeryCard> createState() => _OrderSummeryCardState();
}

class _OrderSummeryCardState extends State<OrderSummeryCard> {
  // int subtotal = 13029000;
  // int shipping = 15;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        color: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Order Summary",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black),
              ),
              AppSpacers.height16,
              OrderSummaryItem(
                  title: "Wireless headphone",
                  price: "129.000",
                  quantity: 2,
                  image: "assets/images/product/headphone.jpg"),
              AppSpacers.height16,
              OrderSummaryItem(
                  title: "Macbook Pro",
                  price: "12.900.000",
                  quantity: 1,
                  image: "assets/images/product/macbook.jpg"),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal",
                    style: TextStyle(
                        color: AppColors.gray,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Rp13.029.000",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              AppSpacers.height8,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shipping",
                    style: TextStyle(
                        color: AppColors.gray,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Rp123.000",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Rp13.152.000",
                    style: TextStyle(
                        color: AppColors.teal,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
