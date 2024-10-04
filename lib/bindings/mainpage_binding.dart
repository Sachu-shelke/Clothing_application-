import 'package:get/get.dart';
import 'package:projectcloth/controller/mainpage_controller.dart';

class MainpageBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<MainpageController>(MainpageController());  }
}