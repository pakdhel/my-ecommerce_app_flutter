import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/common/widgets/app_spacers.dart';
import 'package:my_ecommerce_app/features/payment/presentation/widgets/address.dart';
import 'package:my_ecommerce_app/features/payment/presentation/widgets/order_summary_card.dart';
import 'package:my_ecommerce_app/features/payment/presentation/widgets/payment_method_card.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.black,
        foregroundColor: AppColors.white,
        title: Text(
          "Checkout",
          style: TextStyle(
              color: AppColors.white,
              fontSize: 24,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 24),
        child: Column(
          children: [
            Address(),
            AppSpacers.height16,
            OrderSummeryCard(),
            AppSpacers.height16,
            PaymentMethodCard(),
            AppSpacers.height16,
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.lock),
                  label: Text(
                    "Confirm Payment",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
