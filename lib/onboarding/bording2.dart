
import 'package:android_flutter/homepage/homescreen.dart';
import 'package:android_flutter/onboarding/bording3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class onboarding2 extends StatefulWidget {
  const onboarding2({super.key});

  @override
  State<onboarding2> createState() => _onboarding2State();
}

class _onboarding2State extends State<onboarding2> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController();
    // ignore: constant_identifier_names
    const String Password =
        'assets/images/undraw_projections_re_ulc6 1 (1).svg';
    const String Phone =
        'assets/images/undraw_mobile_encryption_re_yw3o 1 (1).svg';
    const String arrow = 'assets/images/next - intro arrow.svg';
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: width / 1,
            height: height / 1.56,
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Password,
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
                  'Become affiliate marketer',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.w600),
                ),
                const Gap(10),
              
                const Text(
                  "   Affiliate marketing is a perfomance-based \n                             online business",
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
                            color: Color.fromARGB(255, 224, 181, 49),),
                      ),
                    ),
                     Gap(40),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color:  Color.fromARGB(255, 224, 181, 49),
                          borderRadius: BorderRadius.circular(40)),
                    child: IconButton(
                          onPressed: () {},
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
      ),
    );
  }
}
