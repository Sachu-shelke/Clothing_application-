import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final String? lable;
  final TextStyle? style;

  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final Decoration? decoration;
  final Decoration? foregroundDecoration;
  final  BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
   final AssetBundle? bundle;
   final double? Positioned;
   final Text? hinttext;
  final String? hintText;
   final FontWeight? fontsize;

  final double? left; final   double? top;
  final double? right;   final   double? bottom;
   
  CommonContainer(   {super.key,  this.height, this.width, this.color, this.lable, this.style, this.alignment, this.padding, this.decoration, this.foregroundDecoration, this.constraints, this.margin, this.bundle, this.left, this.top, this.right, this.bottom, this.Positioned,  this.hinttext, this.hintText, this.fontsize });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ Container(
        height: height ?? 50,
        width: width ?? 50,
        decoration: BoxDecoration(
            color: color ?? Colors.grey,
            border: Border.all(width: 2),
            borderRadius: BorderRadius.circular(11)
        ),
        child: Center(child: Text(hintText ?? "data",style:style?? TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),)),
      )

      ]
    );
  }
}