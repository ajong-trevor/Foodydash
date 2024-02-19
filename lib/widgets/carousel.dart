import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../services/carousel_services.dart';
import '../widgets/hero_carousel_card.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        disableGesture: true,
        options: CarouselOptions(
          aspectRatio: 2.5,
          enlargeCenterPage: true,
          viewportFraction: 0.9,
          enableInfiniteScroll: true,
          autoPlay: true,
        ),
        items: carousel
            .map((carousel) => HeroCarouselCard(carousel: carousel))
            .toList(),
      ),
    );
  }
}
