import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  int _carouselCurrentIndex = 0;

  int get corouselCurrentIndex => _carouselCurrentIndex;

  void updatePageIndicator(int index) {
    _carouselCurrentIndex = index;
    notifyListeners();
  }
}
