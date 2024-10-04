import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Product {
  final String title;
  final String image;
  final String review;
  final double price;
  final List<Color> colors;
  final double rate;
  int quantity;

  Product(
      {required this.title,
        required this.review,
        required this.image,
        required this.price,
        required this.colors,
        required this.rate,
        required this.quantity});
}

// RxList<Map<String, dynamic>> allproduct=[
//   Product(
//     title: "Pink Hoodie",
//     image: "assets/images/img.png",
//     price: 40.00 ,
//     colors: [
//       Colors.black,
//       Colors.blue,
//       Colors.orange,
//     ],
//     review: "(320 Reviews)",
//     rate: 4.8,
//     quantity: 1,
//   ),
//   Product(
//     title: "Pink Hoodie",
//     image: "assets/images/img.png",
//     price: 40.00 ,
//     colors: [
//       Colors.black,
//       Colors.blue,
//       Colors.orange,
//     ],
//     review: "(320 Reviews)",
//     rate: 4.8,
//     quantity: 1,
//   ),
//   Product(
//     title: "Pink Hoodie",
//     image: "assets/images/img.png",
//     price: 40.00 ,
//     colors: [
//       Colors.black,
//       Colors.blue,
//       Colors.orange,
//     ],
//     review: "(320 Reviews)",
//     rate: 4.8,
//     quantity: 1,
//   ),
//   Product(
//     title: "Pink Hoodie",
//     image: "assets/images/img.png",
//     price: 40.00 ,
//     colors: [
//       Colors.black,
//       Colors.blue,
//       Colors.orange,
//     ],
//     review: "(320 Reviews)",
//     rate: 4.8,
//     quantity: 1,
//   ),
// ].obs as RxList<Map<String, dynamic>>;


