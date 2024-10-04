import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:projectcloth/controller/cart_screen_controller.dart';
import 'package:projectcloth/screen/payment_screen.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  CartScreenController cartScreenController =Get.put <CartScreenController>(CartScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount:cartScreenController.cartItems.length,
              itemBuilder: (context, index) {
                final item =cartScreenController.cartItems[index];
                return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Stack(
                    children: [
                      Container(
                        height: 150,
                        width: 370,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(color: Colors.black12),
                        ),
                      ),
                      Positioned(
                        left: 30,
                        top: 10,
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Image.asset(item.image, fit: BoxFit.fill),
                        ),
                      ),
                      Positioned(
                        left: 125,
                        top: 20,
                        child: Container(
                          height: 130,
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.name, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple)),
                              Text(item.collection, style: TextStyle(fontSize: 10)),
                              SizedBox(height: 25),
                              Text("\$${item.price} USD", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 320,
                        top: 10,
                        child: IconButton(
                          icon: Icon(Icons.close_sharp),
                          onPressed: () => cartScreenController.removeItem(index),
                        ),
                      ),
                      Positioned(
                        left: 250,
                        top: 50,
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: Colors.grey),
                                ),
                                child: Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.remove),
                                      onPressed: () {
                                        setState(() {
                                          if (item.quantity > 0) item.quantity--;
                                        });
                                      },
                                    ),
                                    Text("${item.quantity}", style: TextStyle(fontSize: 24)),
                                    IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: () {
                                        setState(() {
                                          item.quantity++;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          InkWell(
            onTap: () {
            Get.to(PaymentScreen());
            },
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30, top: 35),
                  child: Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(Icons.ios_share_rounded, size: 30, color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("GO TO CHECKOUT", style: TextStyle(color: Colors.white)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Container(
                            height: 25,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.black45,
                            ),
                            child: Center(child: Text("\$${cartScreenController.totalPrice.toStringAsFixed(2)}", style: TextStyle(color: Colors.white))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
