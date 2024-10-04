import 'package:get/get.dart';
import 'package:projectcloth/controller/cart_screen_controller.dart';
import 'package:projectcloth/controller/failed_screen_controller.dart';

class FailedScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<FailedScreenController>(FailedScreenController());  }
}