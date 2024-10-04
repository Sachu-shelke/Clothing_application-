import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:projectcloth/screen/user_login_screen.dart';
import 'package:projectcloth/screen/user_register_screen.dart';
import 'package:projectcloth/widgets/common_button.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
  final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children:[ Container(
              height: mediaQuery.size.height*1,
              width: mediaQuery.size.width*1,
              decoration: BoxDecoration(
                color: Colors.cyan
              ),
              child: Opacity(
                opacity: 0.09, child: Image.asset("assets/images/b2.png", fit: BoxFit.cover,),),
            ),
              Container(
                height: mediaQuery.size.height*1,
                width: mediaQuery.size.width*1,
                child: Image.asset("assets/images/bgimg.png",fit: BoxFit.cover,),
              ),
              Positioned(
                top: 70,
                left: 150,
                child: Row(
                  children: [
                    Text("Shopify.",style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900
                    ),)
                  ],
                ),
              ),
              Positioned(
                top: 160,
                left: 115,
                child: Column(
                  children: [
                    Text("Create your fashion",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                    ),),
                    Text("in your own way",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),)
                  ],
                ),
              ),
              Positioned(
                top: 250,
                left: 50,
                child: Column(
                  children: [
                    Text("Each men and women has their own style.Geeta"),
                    Text("help you to create your unique style")
                  ],
                ),
              ),
              Positioned(
                top: 350,
                left: 130,
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19)
                ),
                  child: CommonBoutton(
                    width: 150,
                    height: 50,
                    // color: Colors.black,
                    hintText: "Login",
                    onTap: (){
                      Get.to(UserLoginScreen());
                    },
                  ),
                ),
              ),
              Positioned(
                top: 430,
                left: 150,
                child: Row(
                  children: [
                    Text("----- OR -----",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20
                    ),)
                  ],
                ),
              ),
              Positioned(
                top: 500,
                  left: 130,
                  child: CommonBoutton(
                    height: 50,
                    width: 150,
                    hintText: "Register",
                    onTap: (){
                      Get.to(UserRegisterScreen());
                    },
                  ))
          ]
          ),
        ],
      ),
    );
  }
}
