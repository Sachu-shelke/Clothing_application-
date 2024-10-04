import 'package:get/get.dart';

class CartItem {
  final String image;
  final String name;
  final String collection;
  final double price;
  int quantity;

  CartItem(this.image, this.name, this.collection, this.price, this.quantity);
}

class CartScreenController extends GetxController {
  RxList<CartItem> cartItems = <CartItem>[
    CartItem("assets/images/img_3.png", "Printed Shirt", "GEETA COLLECTION", 28.00, 1),
    CartItem("assets/images/img_1.png", "Leather Jacket", "GEETA COLLECTION", 36.00, 1),
    CartItem("assets/images/img_2.png", "Washed Jeans", "GEETA COLLECTION", 19.00, 1),
    CartItem("assets/images/img.png", "Pink Hoodie", "GEETA COLLECTION", 45.00, 1),
  ].obs;

  double get totalPrice {
    return cartItems.fold(0, (sum, item) => sum + (item.price * item.quantity));
  }

  void removeItem(int index) {
    if (index >= 0 && index < cartItems.length) {
      cartItems.removeAt(index);
    }
  }

  void addItem(CartItem item) {
    cartItems.add(item);
  }

  void updateItemQuantity(int index, int quantity) {
    if (index >= 0 && index < cartItems.length) {
      cartItems[index].quantity = quantity;
      cartItems.refresh();  // Notify listeners of the change
    }
  }
}
