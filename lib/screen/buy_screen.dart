import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:projectcloth/screen/cart_screen.dart';
import 'package:projectcloth/widgets/common_container.dart';
import 'package:projectcloth/widgets/common_icons.dart';

class BuyScreen extends StatefulWidget {
  final String image;
  final String name;
  final String price;

   BuyScreen({Key? key, required this.image, required this.name, required this.price,}) : super(key: key);

  @override
  State<BuyScreen> createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(widget.name)),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Image.asset(widget.image,height: 150,),
                  SizedBox(height: 20),
                  Text(widget.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text(widget.price, style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
           SizedBox(height: mediaQuery.size.height*0.05,),
              Container(
                decoration: BoxDecoration(

                ),
                child: Row(children: [
                  Text("Shopify",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),)
                ],),
               ),
              Container(
                child: Row(children: [
                  CommonIcons(),
                  CommonIcons(),
                  CommonIcons(),
                  CommonIcons(),
                  CommonIcons(color: Colors.grey,),
                  Text("(4.5)")
                ],),
              ),
              SizedBox(height: mediaQuery.size.height*0.03,),
              Row(children: [Text("DESCRRPTION",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 15),)
              ],),
              Column(children: [
                 Text("Use clear and concise language to convey information. \n"
                   " Avoid jargon and technical terms that might confuse the reader.\n"
                   " Choose words and descriptive adjectives that highlight the unique features of the clothing item.\n"
                    " Speak directly to the customer’s needs and aspirations, tailoring the description to the audience’s preferences.\n"
                   " Tell the product story so the customer can visualise the product in their life. ",
                 style: TextStyle(fontSize: 13),)
                ],),
              SizedBox(height: mediaQuery.size.height*0.05,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                CommonContainer(
                  color: Colors.blue,
                  hintText: "S",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.white),
                ),
                CommonContainer(
                  hintText: "M",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,),
                ),
                CommonContainer(
                  hintText: "L",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,),
                ),
                CommonContainer(
                  hintText: "XL",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),
                ),
                CommonContainer(
                  hintText: "XXL",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),
                ),
              ],),
              SizedBox(height: mediaQuery.size.height*0.05,),
              InkWell(
                onTap: (){
                  Get.to(Cart());
                },
                child: CommonContainer(
                  width: mediaQuery.size.width*0.8,
                  height: 50,
                  color: Colors.blue,
                  hintText: "ADD TO CART",
                  style: TextStyle(color: Colors.white),
                ),
              )
 ],
          ),
        ),
      ),
    );
  }
}
