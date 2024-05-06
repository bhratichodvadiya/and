import 'package:android_flutter/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRcode extends StatelessWidget {
  const QRcode({super.key});

  @override
  Widget build(BuildContext context) {
    const String phone =
        'assets/images/2560103_camera_media_network_social_icon 1.svg';
    double wid = MediaQuery.of(context).size.width;
    double hit = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: Text(
          'My QR Code',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Gap(60),
          Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Group 3622.png'))),
          ),
          Gap(8),
          Center(
            child: Text(
              'John Lawis',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Gap(40),
          QrImageView(
            data: '1234567890',
            version: QrVersions.auto,
            size: 200,
            gapless: true,
          ),
          Gap(60),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: wid / 2,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.primary, width: 2),
                  borderRadius: BorderRadius.circular(40),
                  color: AppColor.white),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      child: Image.asset(
                          'assets/images/2560103_camera_media_network_social_icon 1.png'),
                    ),
                    Text(
                      'Scan QR Code',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
