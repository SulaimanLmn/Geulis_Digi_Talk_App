import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:geulis_digitalk/theme/color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductBanner extends StatefulWidget {
  const ProductBanner({super.key});

  @override
  State<ProductBanner> createState() => _ProductBannerState();
}

class _ProductBannerState extends State<ProductBanner> {
  int activeIndex = 0;
  final urlImage = [
    'assets/images/banner-1.png',
    'assets/images/banner-2.png',
    'assets/images/banner-3.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: urlImage.length,
            itemBuilder: (context, index, realIndex) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  urlImage[index],
                  fit: BoxFit.cover,
                ),
              );
            },
            options: CarouselOptions(
              autoPlay: true,
              viewportFraction: 1,
              autoPlayInterval: const Duration(seconds: 7),
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: urlImage.length,
            effect: SlideEffect(
              dotHeight: 10,
              dotWidth: 10,
              activeDotColor: textColor,
            ),
          )
        ],
      ),
    );
  }
}
