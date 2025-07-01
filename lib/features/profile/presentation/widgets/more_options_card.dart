import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/common/widgets/app_spacers.dart';
import 'package:my_ecommerce_app/features/profile/presentation/widgets/account_item.dart';

class MoreOptionsCard extends StatelessWidget {
  const MoreOptionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          children: [
            AccountItem(
              icon:
                  '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" d="M12 20a8 8 0 1 0 0-16a8 8 0 0 0 0 16m0-11.25c-.69 0-1.25.56-1.25 1.25v.107a.75.75 0 1 1-1.5 0V10A2.75 2.75 0 0 1 12 7.25h.116a2.634 2.634 0 0 1 1.714 4.633l-.77.66a.9.9 0 0 0-.31.674v.533a.75.75 0 0 1-1.5 0v-.533c0-.697.304-1.359.833-1.812l.771-.66a1.134 1.134 0 0 0-.738-1.995zM13 16a1 1 0 1 1-2 0a1 1 0 0 1 2 0"/></svg>',
              iconColor: AppColors.teal,
              nameItem: "Help Center",
              desc: "Get help and support",
              onTap: () => print("help center"),
            ),
            AppSpacers.height24,
            AccountItem(
              icon:
                  '<svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48"><path fill="currentColor" d="M2.5 22.6C2.5 10.873 12.2 1.5 24 1.5s21.5 9.373 21.5 21.1v8.488q0 .275-.027.543q.027.18.027.369c0 1.97-.243 4.117-.48 5.757c-.372 2.567-1.891 5.113-4.672 6.214C37.355 45.157 32.158 46.5 24 46.5a2.5 2.5 0 0 1 0-5c7.603 0 12.165-1.25 14.507-2.177c.762-.302 1.39-1.077 1.564-2.282q.033-.229.065-.466c-1.406.313-3.03.615-4.645.784c-2.122.223-4.191-1.056-4.578-3.36c-.226-1.34-.413-3.273-.413-6c0-2.725.187-4.657.413-5.998c.387-2.304 2.456-3.583 4.578-3.36c.852.089 1.707.215 2.53.36C36.393 12.997 30.783 8.5 24 8.5S11.608 12.997 9.979 19.001a37 37 0 0 1 2.53-.36c2.122-.223 4.191 1.056 4.579 3.36c.225 1.34.412 3.273.412 5.999s-.187 4.658-.412 5.999c-.388 2.304-2.457 3.583-4.579 3.36c-2.198-.23-4.41-.705-6.07-1.12c-2.4-.601-3.939-2.777-3.939-5.15z"/></svg>',
              iconColor: AppColors.purple,
              nameItem: "Contact Us",
              desc: "Reach our support team",
              onTap: () => print("contact us"),
            ),
            AppSpacers.height24,
            AccountItem(
              icon:
                  '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20 12h-9.5m7.5 3l3-3l-3-3m-5-2V6a2 2 0 0 0-2-2H6a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h5a2 2 0 0 0 2-2v-1"/></svg>',
              iconColor: AppColors.red,
              nameItem: "Logout",
              desc: "Sign out your account",
              onTap: () => print("logout"),
            ),
          ],
        ),
      ),
    );
  }
}
