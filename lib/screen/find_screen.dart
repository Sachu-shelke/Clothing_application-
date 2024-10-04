import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:projectcloth/widgets/common_textfield.dart';

import '../controller/cloth_details_01.dart';
import '../controller/cloth_find_03.dart';
class FindScreen extends StatefulWidget {
  const FindScreen({super.key});

  @override
  State<FindScreen> createState() => _FindScreenState();
}

class _FindScreenState extends State<FindScreen> {
  final ClothDetails3 clothDetails = Get.put<ClothDetails3>(ClothDetails3());
TextEditingController textEditingController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50,bottom: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: (){
                            Get.back();
                          },
                          child: Icon(Icons.arrow_back)),
                      SizedBox(width: 50,),
                      Text("Find Product",style: TextStyle(
                        color: Colors.black,fontSize: 15,fontWeight: FontWeight.w700
                      ),),
                    ],
                  ),
                )
              ],
            ),
          ),
          CommonTextfield(controller: TextEditingController(),
              prefixIcon: Icons.search,
              inColor: Colors.black,
              offColor: Colors.black,
              helperText: ""),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 15,
                childAspectRatio: 0.8,
              ),
              itemCount: clothDetails.products.length,
              itemBuilder: (context, index) {
                final product = clothDetails.products[index];
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
        ],
      ),
    );
  }
}
