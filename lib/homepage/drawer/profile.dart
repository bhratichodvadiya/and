import 'dart:io';
import 'dart:typed_data';

import 'package:android_flutter/homepage/homescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  Uint8List? _image;
  File? selectedImage;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => homescreen()));
            },
            icon: Icon(Icons.arrow_back_ios_new)),
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 224, 181, 49),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              height: height / 1.1,
              width: width / 1.1,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                boxShadow: [
                  BoxShadow(blurRadius: 0.0),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Gap(40),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      _image != null
                          ? CircleAvatar(
                              radius: 50,
                              backgroundImage: MemoryImage(_image!),
                            )
                          : CircleAvatar(
                              radius: 50,
                              // backgroundImage:
                              //     AssetImage('assets/images/Toby.png'),
                            ),
                      Positioned(
                        bottom: 14,
                        left: 70,
                        child: IconButton(
                          onPressed: () {
                            imagepicker(context);
                          },
                          icon: CircleAvatar(
                              radius: 15,
                              child: Icon(
                                Icons.edit,
                                size: 20,
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 130,
                        height: 130,
                        child: CircularProgressIndicator(
                  value: 0.8,
                          color: Color.fromARGB(255, 224, 181, 49),
                          strokeWidth: 6,
                          strokeCap: StrokeCap.round,
                          backgroundColor: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Gap(20),
                  Text(
                    'John Lawis',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'GOLD MEMBER',
                    style: TextStyle(
                        color: Color.fromARGB(255, 202, 152, 2), fontSize: 12),
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(10),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Full Name',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Phone Number',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Email Address',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Address',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  void imagepicker(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (builder) {
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 4.5,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _pickImageFromGallery();
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            Icons.image,
                            size: 70,
                          ),
                          Text("Gallery"),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _pickImageFromcamera();
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            Icons.camera_alt_sharp,
                            size: 70,
                          ),
                          Text("Camera"),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

// Gallery
  Future _pickImageFromGallery() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;
    setState(() {
      selectedImage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }

  //Camera
  Future _pickImageFromcamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      selectedImage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }
}
