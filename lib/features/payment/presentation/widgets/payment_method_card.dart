import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/common/widgets/app_spacers.dart';
import 'package:my_ecommerce_app/features/payment/presentation/widgets/payment_options.dart';

class PaymentMethodCard extends StatefulWidget {
  const PaymentMethodCard({super.key});

  @override
  State<PaymentMethodCard> createState() => _PaymentMethodCardState();
}

class _PaymentMethodCardState extends State<PaymentMethodCard> {
  String? _selectedPaymentMethod = "CashOnDelivery";

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
                "Payment Method",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black),
              ),
              AppSpacers.height16,
              PaymentOptions(
                  value: "CashOnDelivery",
                  label: "Cash On Delivery",
                  icon: Iconify(
                      color: AppColors.purple,
                      '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" d="M18.5 16.8c-.7 0-1.2-.6-1.2-1.2c0-.7.6-1.2 1.2-1.2s1.2.6 1.2 1.2c.1.6-.5 1.2-1.2 1.2m0-4.8c-1.9 0-3.5 1.6-3.5 3.5c0 2.6 3.5 6.5 3.5 6.5s3.5-3.9 3.5-6.5c0-1.9-1.6-3.5-3.5-3.5m-3.6-.7C14.6 10 13.4 9 12 9c-1.7 0-3 1.3-3 3s1.3 3 3 3c.4 0 .7-.1 1-.2c.2-1.4.9-2.6 1.9-3.5M13 16H7a2 2 0 0 0-2-2v-4a2 2 0 0 0 2-2h10a2 2 0 0 0 2 2s1 0 2 .6V6H3v12h10.5c-.2-.7-.4-1.3-.5-2"/></svg>'),
                  selected: _selectedPaymentMethod == "CashOnDelivery",
                  onSelected: (newValue) {
                    setState(() {
                      _selectedPaymentMethod = newValue;
                    });
                  }),
              AppSpacers.height8,
              PaymentOptions(
                  value: "CreditDebitCard",
                  label: "Credit/Debit Card",
                  icon: Iconify(
                      color: AppColors.green,
                      '<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32"><path fill="currentColor" d="M26.117 14.628s.422 2.067.517 2.5h-1.855l.889-2.417c-.011.017.183-.506.294-.828zM32 6.222v19.556a2.67 2.67 0 0 1-2.667 2.667H2.666a2.67 2.67 0 0 1-2.667-2.667V6.222a2.67 2.67 0 0 1 2.667-2.667h26.667A2.67 2.67 0 0 1 32 6.222M8.472 20.178l3.511-8.622H9.622l-2.183 5.889l-.239-1.194l-.778-3.967c-.128-.55-.522-.706-1.011-.728H1.817l-.039.172a8.8 8.8 0 0 1 2.344.95l1.989 7.5zm5.245.011l1.4-8.633h-2.233l-1.394 8.633zm7.772-2.822c.011-.983-.589-1.733-1.872-2.35c-.783-.395-1.261-.661-1.261-1.067c.011-.367.406-.745 1.283-.745a3.8 3.8 0 0 1 1.661.328l.2.094l.306-1.867a5.6 5.6 0 0 0-2-.367c-2.206 0-3.756 1.178-3.767 2.855c-.017 1.239 1.111 1.928 1.956 2.344c.861.422 1.156.7 1.156 1.072c-.011.578-.7.844-1.339.844c-.889 0-1.367-.139-2.095-.461l-.294-.139l-.311 1.939c.522.239 1.489.45 2.489.461c2.344.005 3.872-1.156 3.889-2.944zm7.844 2.822l-1.8-8.633h-1.728c-.533 0-.939.156-1.167.717l-3.317 7.917h2.344s.383-1.067.467-1.294h2.867c.067.306.267 1.294.267 1.294z"/></svg>'),
                  selected: _selectedPaymentMethod == "CreditDebitCard",
                  onSelected: (newValue) {
                    setState(() {
                      _selectedPaymentMethod = newValue;
                    });
                  }),
              AppSpacers.height8,
              PaymentOptions(
                  value: "PayPal",
                  label: "PayPal",
                  icon: Iconify(
                      color: AppColors.teal,
                      '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" d="M9.93 12.99c.1 0 2.42.1 3.8-.24h.01c1.59-.39 3.8-1.51 4.37-5.17c0 0 1.27-4.58-5.03-4.58H7.67c-.49 0-.91.36-.99.84L4.38 18.4c-.05.3.19.58.49.58H8.3l.84-5.32c.06-.38.39-.67.79-.67"/><path fill="currentColor" d="M18.99 8.29c-.81 3.73-3.36 5.7-7.42 5.7H10.1l-1.03 6.52c-.04.26.16.49.42.49h1.9c.34 0 .64-.25.69-.59c.08-.4.52-3.32.61-3.82c.05-.34.35-.59.69-.59h.44c2.82 0 5.03-1.15 5.68-4.46c.26-1.34.12-2.44-.51-3.25"/></svg>'),
                  selected: _selectedPaymentMethod == "PayPal",
                  onSelected: (newValue) {
                    setState(() {
                      _selectedPaymentMethod = newValue;
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
