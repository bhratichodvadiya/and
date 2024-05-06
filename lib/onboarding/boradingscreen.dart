import 'package:android_flutter/onboarding/bording2.dart';
import 'package:android_flutter/onboarding/bording3.dart';
import 'package:android_flutter/onboarding/bording1.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class boading extends StatefulWidget {
  const boading({super.key});

  @override
  State<boading> createState() => _boadingState();
}

class _boadingState extends State<boading> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [
              
            
              onboarding(),
              onboarding2(),
              onboarding3(),
            ],
          ),
          Center(
            child: Container(
              alignment: const Alignment(0, 0.35),
              child: SmoothPageIndicator(
                
                  controller: _controller,
                  effect:  WormEffect(

                    dotWidth: 12,
                  dotHeight: 12,
                      dotColor: Color.fromARGB(255, 202, 152, 2),
                      activeDotColor: Colors.black,
                      spacing: 10),
                  count: 3),
            ),
          ),
        ],
      ),
    );
  }
}
