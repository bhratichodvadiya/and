import 'package:android_flutter/homepage/drawer/Drawer.dart';
import 'package:android_flutter/homepage/drawer/profile.dart';
import 'package:android_flutter/homepage/slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const String heart = 'assets/images/heart.svg';
    const String icons = 'assets/images/Icons.svg';
    const String search = 'assets/images/search.svg';
    const String user = 'assets/images/user.svg';
    const String Vector = 'assets/images/Vector (19).svg';

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      // App Bar
      appBar: AppBar(
        
        centerTitle: true,
        title: const Text(
          'Surat',
          style: TextStyle(fontSize: 26, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              size: 30,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: Color.fromARGB(255, 224, 181, 49),
      ),
// Drawer
     // drawer: drawerscreen(),

// BottomNavigtion
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
        child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            selectedItemColor: Colors.black,
            selectedFontSize: 10.0,
            unselectedItemColor: Colors.white,
            selectedIconTheme: const IconThemeData(color: Colors.black),
            unselectedIconTheme: const IconThemeData(
              color: Colors.white,
            ),
            backgroundColor: Color.fromARGB(255, 224, 181, 49),
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_filled,
                    size: 30,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    size: 30,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_border,
                    size: 30,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    size: 30,
                  ),
                  label: '')
            ]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Gap(10),
           slidercarousel(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '   Catagory',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        color: Color.fromARGB(255, 202, 152, 2),
                      ),
                    )),
              ],
            ),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [BoxShadow(blurRadius: 1, spreadRadius: 0)]),
                    height: height / 5.30,
                    width: width / 3.40,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Fruits & \nVegetables',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.green,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              width: width / 3.40,
                              height: 80,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/fresh-healthy-vegetables-nature-food-generative-ai.jpg'),
                                      fit: BoxFit.cover)),
                            )
                          ],
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          child: Icon(Icons.home_filled),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 3),
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.green),
                        ),
                      ],
                    )),
                Container(
                    height: height / 5.30,
                    width: width / 3.40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [BoxShadow(blurRadius: 1, spreadRadius: 0)]),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Dairy & \nBackery',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 202, 153, 4),
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              width: width / 3.40,
                              height: 80,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/arrangement-delicious-sweet-cakes.jpg'),
                                      fit: BoxFit.cover)),
                            )
                          ],
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          child: Icon(Icons.shopping_bag),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3),
                            borderRadius: BorderRadius.circular(40),
                            color: Color.fromARGB(255, 202, 153, 4),
                          ),
                        ),
                      ],
                    )),
                Container(
                    height: height / 5.30,
                    width: width / 3.40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [BoxShadow(blurRadius: 1, spreadRadius: 0)]),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Beverages',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 59, 67, 112),
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              width: width / 3.40,
                              height: 80,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/tropical-drop-refreshment-steamy-refreshing.jpg'),
                                      fit: BoxFit.cover)),
                            )
                          ],
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          child: Icon(Icons.favorite),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3),
                            borderRadius: BorderRadius.circular(40),
                            color: Color.fromARGB(255, 59, 67, 112),
                          ),
                        ),
                      ],
                    )),
                Container(
                    height: height / 5.30,
                    width: width / 3.40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [BoxShadow(blurRadius: 1, spreadRadius: 0)]),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              '   Snacks & \nBranded Foods',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 168, 46, 37),
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              width: width / 3.40,
                              height: 80,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/close-up-homemade-cake-with-copy-space.jpg'),
                                      fit: BoxFit.cover)),
                            )
                          ],
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          child: Icon(Icons.lan_rounded),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3),
                            borderRadius: BorderRadius.circular(40),
                            color: Color.fromARGB(255, 168, 46, 37),
                          ),
                        ),
                      ],
                    )),
                Container(
                    height: height / 5.30,
                    width: width / 3.40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [BoxShadow(blurRadius: 1, spreadRadius: 0)]),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'personal \n   Care',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.purple,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              width: width / 3.40,
                              height: 80,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/view-eyeshadow-palette-with-brush-applicator.jpg'),
                                      fit: BoxFit.cover)),
                            )
                          ],
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          child: Icon(Icons.access_alarms_rounded),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 3),
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.purple),
                        ),
                      ],
                    )),
                Container(
                    height: height / 5.30,
                    width: width / 3.40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [BoxShadow(blurRadius: 1, spreadRadius: 0)]),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Fashion  & \nLifeStyle',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.brown,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              width: width / 3.40,
                              height: 80,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/male-belt-sweater-accessories-clothes.jpg'),
                                      fit: BoxFit.cover)),
                            )
                          ],
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          child: Icon(Icons.accessible),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 3),
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.brown),
                        ),
                      ],
                    )),
              ],
            ),
            const Gap(20),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/close-up-homemade-cake-with-copy-space.jpg',
                      ),
                      fit: BoxFit.cover)),
              width: width / 1.08,
              height: height / 4.60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(8),
                  const Text(
                    '   Discover',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  const Text(
                    '    Best Buffer Launch \n    Of the Day',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.amber)),
                        onPressed: () {},
                        child: const Text(
                          'try Too',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '   Popular items',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        color: Color.fromARGB(255, 202, 152, 2),
                      ),
                    )),
              ],
            ),
            Wrap(
              spacing: 24,
              children: [
                Container(
                    height: height / 4.60,
                    width: width / 2.40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [BoxShadow(blurRadius: 1, spreadRadius: 0)]),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 180,
                              height: 100,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                  'assets/images/meat-dish-with-vegetables.jpg',
                                )),
                              ),
                            ),
                            const Text(
                              '   Spicy',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                            const Text(
                              '  Samosa',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  '\$5.01',
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 202, 153, 4),
                                      fontWeight: FontWeight.w600),
                                ),
                                Container(
                                    width: 46,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 202, 153, 4),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        Text(
                                          '4.7',
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ))
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_outline_outlined,
                            size: 36,
                          ),
                        )
                      ],
                    )),
                Container(
                    height: height / 4.60,
                    width: width / 2.40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [BoxShadow(blurRadius: 1, spreadRadius: 0)]),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 190,
                              height: 100,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                  'assets/images/studio-portrait-beautiful-young-woman-looking-camera.jpg',
                                )),
                              ),
                            ),
                            const Text(
                              '   HumBurger',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                            const Text(
                              '  Delicious Burger',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  '\$4.00',
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 202, 153, 4),
                                      fontWeight: FontWeight.w600),
                                ),
                                Container(
                                    width: 46,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 202, 153, 4),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        Text(
                                          '4.7 ',
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    )),
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_outline_outlined,
                            size: 36,
                          ),
                        )
                      ],
                    )),
              ],
            ),
          const Gap(20),
          ],
        ),
      ),
    );
  }
}
