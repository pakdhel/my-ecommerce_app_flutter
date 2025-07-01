import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/widgets/app_spacers.dart';
import 'package:my_ecommerce_app/common/widgets/custom_appbar.dart';
import 'package:my_ecommerce_app/features/profile/presentation/widgets/more_options_card.dart';
import 'package:my_ecommerce_app/features/profile/presentation/widgets/my_accound_card.dart';
import 'package:my_ecommerce_app/features/profile/presentation/widgets/profile_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Profile", cartCounter: 0),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 24),
          child: Column(
            children: [
              ProfileCard(),
              AppSpacers.height16,
              MyAccountCard(),
              AppSpacers.height16,
              MoreOptionsCard()
            ],
          ),
        ),
      ),
    );
  }
}
