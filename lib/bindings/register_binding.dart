import 'package:get/get.dart';
import 'package:projectcloth/controller/register_controller.dart';

class RegisterBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<RegisterController>(RegisterController());  }
}