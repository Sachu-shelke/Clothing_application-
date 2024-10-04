import 'package:get/get.dart';
import 'package:projectcloth/controller/cart_screen_controller.dart';
import 'package:projectcloth/controller/payment_screen_controller.dart';

class PaymentScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<PaymentScreenController>(PaymentScreenController());  }
}