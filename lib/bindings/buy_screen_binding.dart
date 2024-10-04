import 'package:get/get.dart';
import 'package:projectcloth/controller/buy_screen_controller.dart';

class BuyScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<BuyController>(BuyController());  }
}