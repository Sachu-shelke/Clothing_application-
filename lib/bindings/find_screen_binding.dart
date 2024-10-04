
import 'package:get/get.dart';

import '../controller/find_screen_controller.dart';

class FindScreenBinding extends Bindings{
  @override
  void dependencies() {
Get.put<ProductCard>(ProductCard());  }

}