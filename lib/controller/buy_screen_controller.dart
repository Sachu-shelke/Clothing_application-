import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuyController extends GetxController {
  var isFavorite = false.obs;
  var quantity = 1.obs;
  var selectedSizeIndex = (-1).obs;

  void toggleFavorite() {
    isFavorite.value = !isFavorite.value;
  }

  void increaseQuantity() {
    quantity.value++;
  }

  void decreaseQuantity() {
    if (quantity.value > 1) {
      quantity.value--;
    }
  }

  void selectSize(int index) {
    selectedSizeIndex.value = index;
  }

  Color getSizeColor(int index) {
    return selectedSizeIndex.value == index ? Colors.purple : Colors.grey;
  }
}
