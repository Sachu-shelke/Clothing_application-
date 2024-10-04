import 'package:get/get.dart';
import 'package:projectcloth/controller/cart_screen_controller.dart';

class CartScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<CartScreenController>(CartScreenController());  }
}