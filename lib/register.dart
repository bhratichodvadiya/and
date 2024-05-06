import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    // Svg Images
    const String profile = 'assets/images/account_circle.svg';
    const String Google = 'assets/images/Group 3511.svg';
    const String Password = 'assets/images/password.svg';
    const String Phone = 'assets/images/phone.svg';

// media query
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    TextEditingController phonenumber = TextEditingController();
    TextEditingController passwor = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: width / 1,
              height: height / 1.46,
              color: Color.fromARGB(255, 202, 152, 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(60),
                  const Text(
                    '   Register',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const Text(
                    '        Please Register to Login.',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                  Gap(40),
                  Center(
                    child: SizedBox(
                      width: width / 1.10,
                      child: TextFormField(
                        autofocus: true,
                        controller: phonenumber,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Create Username',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(7),
                              child: SvgPicture.asset(
                                profile,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: Colors.black54, width: 3)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.black38,
                                ))),
                      ),
                    ),
                  ),
                  const Gap(10),
                  Center(
                    child: SizedBox(
                      width: width / 1.10,
                      child: TextFormField(
                        autofocus: true,
                        controller: phonenumber,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Enter phone Number',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(7),
                              child: SvgPicture.asset(
                                Phone,
                                semanticsLabel: 'phone',
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: Colors.black54, width: 3)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.black38,
                                ))),
                      ),
                    ),
                  ),
                  Gap(10),
                  Center(
                    child: SizedBox(
                      width: width / 1.10,
                      child: TextFormField(
                        controller: passwor,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Password',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(7),
                              child: SvgPicture.asset(
                                Password,
                                semanticsLabel: 'password ',
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: Colors.black54, width: 3)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.black38,
                              ),
                            )),
                      ),
                    ),
                  ),
                  Gap(40),
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: width / 1.10,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        child: const Center(
                            child: Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        )),
                      ),
                    ),
                  ),
                  Gap(60),
                  const Center(
                      child: Text(
                    'Or Login With',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  )),
                ],
              ),
            ),
            Container(
              width: width / 1,
              height: height / 3.46,
              color: Colors.white,
              child: Column(
                children: [
                  Gap(40),
                  Container(
                      width: width / 1.10,
                      height: 60,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(blurRadius: 4, offset: Offset(1, 4))
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 202, 152, 2)),
                      child: ElevatedButton.icon(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Color.fromARGB(255, 202, 152, 2))),
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            Google,
                            semanticsLabel: 'Google ',
                            height: 40,
                            width: 40,
                          ),
                          label: const Text(
                            'Continue With Google',
                            style: TextStyle(color: Colors.white),
                          ))),
                  Gap(60),
                  const Text.rich(TextSpan(
                      text: '''  Don't Have Account?  ''',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                      children: [
                        TextSpan(
                            text: 'Sign In',
                            style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 202, 152, 2)))
                      ])),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
