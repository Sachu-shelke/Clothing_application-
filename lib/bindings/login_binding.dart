import 'package:get/get.dart';
import 'package:projectcloth/controller/login_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<LoginController>(LoginController());  }
}