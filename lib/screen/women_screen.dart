import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:projectcloth/controller/cloth_controller.dart';
class WomenScreen extends StatefulWidget {
  const WomenScreen({super.key});

  @override
  State<WomenScreen> createState() => _WomenScreenState();
}

class _WomenScreenState extends State<WomenScreen> {
  final ClothController clothController = Get.put<ClothController>(ClothController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WOMEN"),
      ),
      body: Column(children: [
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 15,
              childAspectRatio: 0.8,
            ),
            itemCount: clothController.women.length,
            itemBuilder: (context, index) {
              final product = clothController.women[index];
              return GestureDetector(
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                                onTap: (){
                                },
                                child: Icon(Icons.favorite)),
                            SizedBox(height: 8),
                            Image.asset(
                              product["image"]!,
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                            Text(
                                product["name"]!
                            ),
                            SizedBox(height: 4),
                            Text(
                              product["price"]!,
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(height: 4),
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
      ],),
    );
  }
}
