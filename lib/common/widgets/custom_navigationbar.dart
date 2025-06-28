import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/features/home/presentation/pages/home_page.dart';
import 'package:my_ecommerce_app/features/profile/presentation/pages/profile_page.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [HomePage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 5,
              spreadRadius: 0,
              color: AppColors.gray)
        ]),
        child: NavigationBar(
          destinations: [
            NavigationDestination(
                selectedIcon: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                ),
                icon: Icon(
                  Icons.home,
                  color: AppColors.black,
                ),
                label: "Home"),
            NavigationDestination(
                selectedIcon: Icon(
                  Icons.person_outline,
                  color: Colors.white,
                ),
                icon: Icon(
                  Icons.person,
                  color: AppColors.black,
                ),
                label: "profile")
          ],
          indicatorColor: AppColors.black,
          backgroundColor: AppColors.white,
          selectedIndex: _currentIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
