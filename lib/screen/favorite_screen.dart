import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/cloth_find_03.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  final ClothDetails3 clothDetails = Get.put<ClothDetails3>(ClothDetails3());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
        title: Text("Favorite"),
      ),
      body: Obx(() => clothDetails.products.isNotEmpty
          ? ListView.builder(
        itemCount: clothDetails.products.length,
        itemBuilder: (context, index) {
          final product = clothDetails.products[index];
          return ListTile(
            title: Text(product['name']!),
            leading: Image.asset(product['image']!),
            trailing: Column(
              children: [
                Text("\$${product['price']}"),
                Icon(Icons.arrow_forward),
              ],
            ),
            subtitle: Text("Shopify"),
            isThreeLine: true,
          );
        },
      )
          : Center(child: Text("No favorites added yet!"))),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GestureDetector(
          onTap: () => _showAddToCartBottomSheet(),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Center(
              child: Text(
                "Add all to cart",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showAddToCartBottomSheet() {
    Get.bottomSheet(
      Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(children: [
                Text("Checkout",style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.w900
                ),),
                Spacer(),
                InkWell(
                    onTap: (){
                      Get.back();
                      },
                    child: Icon(Icons.close))
              ],),
            ),
            Divider(thickness: 1,),
            Row(children: [
              Text("Delivery",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
              Spacer(),
              Text("Select Method",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.blue),)
            ],),
            Divider(thickness: 1,),
            Row(children: [
              Text("Payment",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
              Spacer(),
              Icon(Icons.account_balance_outlined)
            ],),
            Divider(thickness: 1,),
            Row(children: [
              Text("Promo Code",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
              Spacer(),
              Text("Pick Discount",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.blue),)
            ],),
            Divider(thickness: 1,),
            Text(
              "Add All Items to Cart",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text("You are about to add all your favorite items to the cart."),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.back();
                Get.snackbar("Success", "All items added to cart!");
              },
              child: Text("Confirm"),
            ),
          ],
        ),
      ),
    );
  }
}
