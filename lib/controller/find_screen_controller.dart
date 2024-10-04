import 'package:flutter/cupertino.dart';

class ProductCard extends StatefulWidget {
  final String? name;
  final String? price;
  final String? image;
  final MediaQueryData? mediaquery;

  const ProductCard({
    this.name,
   this.price,
   this.image,
    this.mediaquery,
  });

  @override
  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }
}