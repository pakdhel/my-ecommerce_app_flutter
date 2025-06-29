import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';
import 'package:my_ecommerce_app/common/widgets/app_spacers.dart';
import 'package:my_ecommerce_app/features/search/presentation/widgets/category_grid.dart';
import 'package:my_ecommerce_app/features/search/presentation/widgets/others_section.dart';
import 'package:my_ecommerce_app/features/search/presentation/widgets/search_history_list.dart';
import 'package:my_ecommerce_app/features/search/presentation/widgets/search_textfield.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                decoration: BoxDecoration(color: AppColors.white),
                child: SearchTextfield()),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 18, left: 18, bottom: 16),
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset.zero,
                            )
                          ]),
                      child: Column(
                        children: [
                          SearchHistoryList(),
                          AppSpacers.height24,
                          CategoryGrid()
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: OthersSection(),
                    )
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
