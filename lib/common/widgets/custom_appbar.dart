import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final int cartCounter;

  const CustomAppbar(
      {super.key, required this.title, required this.cartCounter});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              title,
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ),
          IconButton(
              onPressed: () {
                print("object");
                Navigator.pushNamed(context, '/cart_page');
              },
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
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
