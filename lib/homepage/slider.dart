import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gap/gap.dart';

class slidercarousel extends StatelessWidget {
  const slidercarousel({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: width / 2.40,
      width: width / 1,
      child: CarouselSlider(
        options: CarouselOptions(
          height: width / 1.3,

          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.2,
          // onPageChanged: callbackFunction,
          scrollDirection: Axis.horizontal,
        ),
        items: [
          Container(
            height: height / 1,
            width: width / 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/male-belt-sweater-accessories-clothes.jpg'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Container(
            height: height / 1,
            width: width / 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/arrangement-delicious-sweet-cakes.jpg'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
           Container(
            height: height / 1,
            width: width / 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/fresh-healthy-vegetables-nature-food-generative-ai.jpg'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
           Container(
            height: height / 1,
            width: width / 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/arrangement-delicious-sweet-cakes.jpg'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ],
      ),
    );
  }
}
