import 'package:android_flutter/QR.dart';
import 'package:android_flutter/homepage/homescreen.dart';
import 'package:android_flutter/loginscreen.dart';
import 'package:android_flutter/onboarding/boradingscreen.dart';
import 'package:android_flutter/onboarding/bording2.dart';
import 'package:android_flutter/onboarding/bording3.dart';
import 'package:android_flutter/onboarding/bording1.dart';
import 'package:android_flutter/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Screen',
      initialRoute: '/bottomnavigtion',
      home:QRcode(),
      getPages: [
        GetPage(
          name: '/homescreen',
          page: () => homescreen(),
        ),
        GetPage(
          name: '/register',
          page: () => register(),
        ),
        GetPage(
          name: '/loginpage',
          page: () => loginpage(),
        ),
        GetPage(
          name: '/',
          page: () => QRcode(),
        ),
      ],
    );
  }
}
