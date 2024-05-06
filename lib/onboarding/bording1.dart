import 'dart:async';
import 'package:android_flutter/homepage/homescreen.dart';
import 'package:android_flutter/onboarding/bording2.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  @override
  Widget build(BuildContext context) {
    const String undrawMobileContentXvgr =
        'assets/images/undraw_mobile_content_xvgr 1 (1).svg';
    const String Password =
        'assets/images/undraw_projections_re_ulc6 1 (1).svg';
    const String Phone =
        'assets/images/undraw_mobile_encryption_re_yw3o 1 (1).svg';
    const String arrow = 'assets/images/next - intro arrow.svg';
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body:
          SingleChildScrollView(
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Container(
            width: width / 1,
            height: height / 1.56,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 224, 181, 49),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  undrawMobileContentXvgr,
                  semanticsLabel: 'phone',
                  height: 300,
                ),
              ],
            ),
                    ),
                    SizedBox(
            width: width / 1,
            height: height / 2.88,
            child: Column(
              children: [
                const Gap(60),
                const Text(
                  'Welcome to Pro Deals',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.w600),
                ),
                const Gap(10),
                const Text(
                  "  Unlock exclusive deals and perrsonalized \ndicounts tailored to your preferences instantly",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => homescreen()));
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                            fontSize: 26,
                            color:Color.fromARGB(255, 224, 181, 49),),
                      ),
                    ),
                    const Gap(40),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 224, 181, 49),
                          borderRadius: BorderRadius.circular(40)),
                      child: IconButton(
                        onPressed: (){},
                          icon: Center(
                            child: Icon(
                              size: 45,
                              color: Colors.white,
                              Icons.arrow_circle_right_outlined,
                            ),
                          )),
                    )
                  ],
                ),
              ],
            ),
                    ),
                  ]),
          ),
    );
  }
}
