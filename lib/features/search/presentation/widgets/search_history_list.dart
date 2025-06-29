import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/widgets/app_spacers.dart';
import 'package:my_ecommerce_app/features/search/presentation/widgets/search_history.dart';

class SearchHistoryList extends StatelessWidget {
  const SearchHistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchHistory(history: "Computer"),
        AppSpacers.height8,
        SearchHistory(history: "Monitor"),
        AppSpacers.height8,
        SearchHistory(history: "Dumbell"),
        AppSpacers.height8,
        SearchHistory(history: "Xbox Gamepad"),
      ],
    );
  }
}
