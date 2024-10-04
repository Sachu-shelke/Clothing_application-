import 'package:get/get.dart';
import 'package:projectcloth/controller/cart_screen_controller.dart';
import 'package:projectcloth/controller/sucess_screen_controller.dart';

class SucessScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<SucessScreenController>(SucessScreenController());  }
}