import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectcloth/screen/cart_screen.dart';
import 'package:projectcloth/screen/splash_screen.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _currentIndex = 0;

  final List<String> imgList = [
    "assets/images/loading_cleanup.png",
    "assets/images/loding_1.png",
    "assets/images/loding_02.png",
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: mediaQuery.size.height,
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                items: imgList.map((item) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(item),
                      fit: BoxFit.cover,
                    ),
                  ),
                )).toList(),
              ),
              Positioned(
                top: mediaQuery.size.height * 0.60,
                left: mediaQuery.size.width * 0.10,
                child: Text("Shopify.",
                  style: TextStyle(
                    fontSize: mediaQuery.size.width * 0.25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: mediaQuery.size.height * 0.78,
                left: mediaQuery.size.width * 0.22,
                child: InkWell(
                  onTap: () {
                    Get.to(SplashScreen());
                  },
                  child: Container(
                    height: mediaQuery.size.height * 0.07,
                    width: mediaQuery.size.width * 0.6,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text("SHOP NOW",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.map((url) {
                    int index = imgList.indexOf(url);
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width: _currentIndex == index ? 30.0 : 9.0,
                      height: 5.0,
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: _currentIndex == index
                            ? Colors.white
                            : Colors.white.withOpacity(0.8),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
