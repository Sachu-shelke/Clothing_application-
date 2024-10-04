
import 'package:get/get.dart';
import 'package:projectcloth/controller/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
Get.put<HomeSceenController>(HomeSceenController());  }
}