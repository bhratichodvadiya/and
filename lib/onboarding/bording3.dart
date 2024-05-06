import 'package:android_flutter/homepage/homescreen.dart';
import 'package:android_flutter/loginscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class onboarding3 extends StatefulWidget {
  const onboarding3({super.key});

  @override
  State<onboarding3> createState() => _onboarding3State();
}

class _onboarding3State extends State<onboarding3> {
  @override
  Widget build(BuildContext context) {
    final PageController _controller = PageController();

    // ignore: constant_identifier_names
    const String Phone =
        'assets/images/undraw_mobile_encryption_re_yw3o 1 (1).svg';
    const String arrow = 'assets/images/next - intro arrow.svg';
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          width: width / 1,
          height: height / 1.56,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 202, 152, 2),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Phone,
                semanticsLabel: 'phone',
                height: 300,
              ),
            ],
          ),
        ),
        Container(
          width: width / 1,
          height: height / 2.88,
          child: Column(
            children: [
              Gap(60),
              Text(
                'end to end encrypted',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.w600),
              ),
              Gap(10),
              Text(
                " Security method that keeps your \n    communications secure",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              Gap(40),
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
                        color: Color.fromARGB(255, 224, 181, 49),
                      ),
                    ),
                  ),
                  Gap(40),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 224, 181, 49),
                        borderRadius: BorderRadius.circular(40)),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) => loginpage()));
                        },
                        icon: Center(
                          child: Icon(
                            size: 45,
                            color: Colors.white,
                            Icons.arrow_circle_right_outlined,
                          ),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
