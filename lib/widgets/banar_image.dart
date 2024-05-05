import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BanarImage extends StatelessWidget {
  const BanarImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Padding(
          padding: const EdgeInsets.only(right: 16, left: 16),
          child: Image.asset(image),
        ),
      ],
      options: CarouselOptions(
        aspectRatio: 8 / 3,
        viewportFraction: 1,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        enlargeCenterPage: true,
      ),
    );
  }
}
