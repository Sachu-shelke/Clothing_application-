import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:projectcloth/screen/user_login_screen.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    throw
    Drawer(
      backgroundColor: Colors.purple,
      child: Column(
        children: [
          DrawerHeader(
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset("assets/images/cha.jpeg"),
                    title: Text(" Mr.Chaitanya Vandhekar",
                      style: TextStyle(color: Colors.white),),
                    subtitle: Text("chaitanya@gmail.com",
                        style: TextStyle(color: Colors.white)),
                    trailing: Icon(Icons.edit, color: Colors.white,),
                  )
                ],
              )
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Icon(
                      Icons.shopping_bag_outlined, color: Colors.white,),
                  ),
                  Text("Orders", style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Icon(
                      Icons.favorite_outline_outlined, color: Colors.white,),
                  ),
                  Text("Wishlist", style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Icon(Icons.person_pin_circle, color: Colors.white,),
                  ),
                  Text("Delivery Address",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Icon(Icons.payments, color: Colors.white,),
                  ),
                  Text(
                      "Payment Methods", style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Icon(Icons.loyalty, color: Colors.white,),
                  ),
                  Text("Promo Card", style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Icon(Icons.notifications, color: Colors.white,),
                  ),
                  Text("Notifications", style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Icon(Icons.help, color: Colors.white,),
                  ),
                  Text("Help", style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Icon(Icons.info, color: Colors.white,),
                  ),
                  Text("About", style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),
          SizedBox(height: 50,),
          Row(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Icon(Icons.logout, color: Colors.white,),
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(UserLoginScreen());
                      },
                      child: Text(
                          "LOG OUT", style: TextStyle(color: Colors.white))),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
