import 'package:get/get.dart';
import 'package:projectcloth/controller/cart_screen_controller.dart';
import 'package:projectcloth/controller/favoriate_screen_controller.dart';

class FavoriateScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<FavoriateScreenController>(FavoriateScreenController());  }
}