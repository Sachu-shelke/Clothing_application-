import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectcloth/screen/buy_screen.dart';
import 'package:projectcloth/screen/cart_screen.dart';
import 'package:projectcloth/screen/favorite_screen.dart';
import 'package:projectcloth/screen/find_screen.dart';
import 'package:projectcloth/screen/men_screen.dart';
import 'package:projectcloth/screen/payment_screen.dart';
import 'package:projectcloth/screen/sale_screen.dart';
import 'package:projectcloth/screen/user_login_screen.dart';
import 'package:projectcloth/screen/women_screen.dart';
import '../controller/cart_screen_controller.dart';
import '../controller/cloth_details_01.dart';
import '../widgets/Drawer_menu.dart';
import 'package:badges/badges.dart' as badges;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ClothDetails clothDetails = Get.put<ClothDetails>(ClothDetails());
  CartScreenController cartScreenController =Get.put <CartScreenController>(CartScreenController());


  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Shopify", style: TextStyle(fontWeight: FontWeight.w600)),
            SizedBox(width: screenWidth * 0.1),
            Badge(
              child: Icon(Icons.notifications),
              label: Text("2"),
            ),
            Badge(
              child: InkWell(
                  onTap: () {
                    Get.to(Cart());
                  },
                  child: Icon(Icons.shopping_cart)),
              label: Text(cartScreenController.cartItems.length.toString()),
            ),
            InkWell(
                onTap: () {
                  Get.to(FavoriteScreen());
                },
                child: Icon(Icons.favorite_border)),
            InkWell(
                onTap: () {
                  Get.to(FindScreen());
                },
                child: Icon(Icons.search)),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05, vertical: screenHeight * 0.02),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Popular", style: TextStyle(fontSize: screenWidth * 0.04, color: Colors.purple)),
                InkWell(
                    onTap: () {
                      Get.to(MenScreen());
                    },
                    child: Text("Mens", style: TextStyle(fontSize: screenWidth * 0.04))),
                InkWell(
                    onTap: () {
                      Get.to(WomenScreen());
                    },
                    child: Text("Women", style: TextStyle(fontSize: screenWidth * 0.04))),
                InkWell(
                    onTap: () {
                      Get.to(SaleScreen());
                    },
                    child: Text("Sale", style: TextStyle(fontSize: screenWidth * 0.04))),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Divider(thickness: 2),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05, vertical: screenHeight * 0.02),
              child: Row(
                children: [
                  Text("Filter & Sort", style: TextStyle(fontSize: screenWidth * 0.04)),
                  Spacer(),
                  Icon(Icons.sort),
                  Icon(Icons.grid_view),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.8,
                ),
                itemCount: clothDetails.HomePageCloths.length,
                itemBuilder: (context, index) {
                  final product = clothDetails.HomePageCloths[index];
                  return GestureDetector(
                    onTap: () {
                      Get.to(
                        BuyScreen(
                          image: product["image"],
                          name: product["name"],
                          price: product["price"],
                        ),
                      );
                    },
                    child: InkWell(
                      child: Stack(
                        children: [
                          Container(
                            height: screenHeight * 0.5,
                            width: screenWidth * 0.4,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 8),
                                Image.asset(
                                  product["image"],
                                  height: 90,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  product["name"],
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: screenWidth * 0.04),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "\$${product["price"]}",
                                  style: TextStyle(color: Colors.grey, fontSize: screenWidth * 0.035),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Obx(() {
                                      return InkWell(
                                        onTap: () {
                                          clothDetails.toggleFavorite(index);
                                        },
                                        child: Icon(
                                          Icons.favorite_border,
                                         color: product["isFavorite"].value ? Colors.red : Colors.black,
                                        ),
                                      );
                                    }),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                height: screenHeight * 0.3,
                child: DrawerHeader(
                  child: Column(
                    children: [
                      UserAccountsDrawerHeader(
                          arrowColor: Colors.white24,
                          accountName: Text("sachin"),
                          accountEmail: Text("sachin@gmail.com")),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Icon(Icons.shopping_bag_outlined, color: Colors.white),
                  Text("Orders", style: TextStyle(color: Colors.white)),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.favorite_outline_outlined, color: Colors.white),
                  Text("Wishlist", style: TextStyle(color: Colors.white)),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.person_pin_circle, color: Colors.white),
                  Text("Delivery Address", style: TextStyle(color: Colors.white)),
                ],
              ),
              InkWell(
                onTap: () {
                  Get.to(PaymentScreen());
                },
                child: Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.payments, color: Colors.white),
                        Text("Payment Methods", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(Icons.loyalty, color: Colors.white),
                  Text("Promo Card", style: TextStyle(color: Colors.white)),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.notifications, color: Colors.white),
                  Text("Notifications", style: TextStyle(color: Colors.white)),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.help, color: Colors.white),
                  Text("Help", style: TextStyle(color: Colors.white)),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.info, color: Colors.white),
                  Text("About", style: TextStyle(color: Colors.white)),
                ],
              ),
              InkWell(
                onTap: () {
                  Get.to(UserLoginScreen());
                },
                child: Row(
                  children: [
                    Icon(Icons.logout, color: Colors.white),
                    Text("LOG OUT", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
