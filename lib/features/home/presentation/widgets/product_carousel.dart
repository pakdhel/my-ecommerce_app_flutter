import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/widgets/app_spacers.dart';
import 'package:my_ecommerce_app/features/home/presentation/providers/home_provider.dart';
import 'package:my_ecommerce_app/features/home/presentation/widgets/dor_indicator.dart';
import 'package:provider/provider.dart';

class ProductCarousel extends StatelessWidget {
  const ProductCarousel({super.key});
  
  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    child: Image.network(
                      item,
                      fit: BoxFit.cover,
                      width: 1000,
                    )),
              ),
            ))
        .toList();
    return Column(
      children: [
        CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
                onPageChanged: (index, reason) {
                  context.read<HomeProvider>().updatePageIndicator(index);
                },
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: false,
                viewportFraction: 1)),
        AppSpacers.height8,
        Consumer<HomeProvider>(
          builder: (context, homeProvider, child) {
            return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(imgList.length, (index) {
                  bool isActive = index == homeProvider.corouselCurrentIndex;
                  return DotIndicator(
                    isActive: isActive,
                  );
                }));
          },
        )
      ],
    );
  }
}
