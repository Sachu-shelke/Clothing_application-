import 'package:get/get.dart';

class ClothDetails extends GetxController {
  RxList<Map<String, dynamic>> HomePageCloths = [
    {"name": "Pink Hoodie", "price": "\$40.00 USD", "image": "assets/images/img.png", "isFavorite": false.obs,},
    {"name": "Leather Jacket", "price": "\$48.00 USD", "image": "assets/images/img_1.png", "isFavorite": false.obs,},
    {"name": "Washed Blue Jeans", "price": "\$36.00 USD", "image": "assets/images/img_2.png", "isFavorite": false.obs,},
    {"name": "Printed Shirt", "price": "\$28.00 USD", "image": "assets/images/img_3.png", "isFavorite": false.obs,},
  ].obs;

  void toggleFavorite(int index) {
    HomePageCloths[index]["isFavorite"].toggle();  // Toggle the RxBool
  }
}
