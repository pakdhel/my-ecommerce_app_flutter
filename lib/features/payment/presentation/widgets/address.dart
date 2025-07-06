import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart'; // Contoh: icon lokasi dari MDI
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/common/widgets/app_spacers.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Icon dan Nama + Nomor
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Iconify(
                    Mdi.map_marker,
                    size: 24,
                    color: Colors.red,
                  ),
                  AppSpacers.width12,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Nama dan No HP
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Sarah Johnson",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                            AppSpacers.width12,
                            Text(
                              "081234567890",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.gray,
                              ),
                            ),
                          ],
                        ),
                        AppSpacers.height8,

                        /// Alamat
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "A.P Pettarani Street No.12, Makassar City, South Sulawesi Province, Indonesia, 91354",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.gray,
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            AppSpacers.width12,
                            Iconify(
                                color: AppColors.gray,
                                '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="m10 17l5-5l-5-5"/></svg>')
                          ],
                        ),
                      ],
                    ),
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
