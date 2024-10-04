import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonBoutton extends StatelessWidget{
   final double? height;
  final double? width;
  final String? hintText;
  final Color? color;
  final Color? bcolor;
  final FontWeight? fontWeight;
  final double? fontsize;
   final  Color? backgroundColor;
   final  double? fontSize;
   final   FontStyle? fontStyle;
   final  double? letterSpacing;
   final void Function()? onTap;
   final   double? wordSpacing;
   final  TextBaseline? textBaseline;
   final  TextLeadingDistribution? leadingDistribution;
   final BoxBorder? broder;
   final BorderRadiusGeometry? borderradius;

   CommonBoutton({super.key, this.height, this.width, this.hintText, this.color, this.fontWeight, this.fontsize, this.backgroundColor, this.fontSize, this.fontStyle, this.letterSpacing, this.wordSpacing, this.textBaseline, this.leadingDistribution, this.broder, this.borderradius, this.bcolor, this.onTap,  });

   @override
  Widget build(BuildContext context) {
   return InkWell(
     onTap:onTap?? (){

     },
     child: Row(
       children: [
         Container(
           height:height?? 70,
           width: width?? 10,
           decoration: BoxDecoration(
               color: bcolor ??  Colors.transparent,
               borderRadius:borderradius?? BorderRadius.circular(19),
               border:broder?? Border.all( width: 2)
           ),
           child: Center(
               child: Text(hintText??"Add the Text",
               style: TextStyle(color:color?? Colors.black,
                   fontSize:fontSize?? 18,
                   fontWeight:fontWeight?? FontWeight.bold))
           ),
         ),
       ],
     ),
   );
  }
}

