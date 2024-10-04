import 'package:flutter/material.dart';

class CommonTextfield extends StatelessWidget {
  final double? height;
  final double? width;
  final String? hintText;
  final String helperText;
  final Color? inColor;
  final Color? offColor;
  final IconData? prefixIcon;
  final IconData? icon;
  final IconData? sIcon;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextEditingController controller;

  CommonTextfield({
    super.key,
    this.height,
    this.width,
    this.hintText,
    this.inColor,
    this.offColor,
    this.prefixIcon,
    this.icon,
    required this.controller,
    this.sIcon,
    this.obscureText = false,
    this.validator, required this.helperText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 100,
      width: width ?? 350,
      child: TextFormField(
        obscureText: obscureText,
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          helperText: helperText ?? "",
          prefixIcon: Icon(prefixIcon ?? Icons.add),
          suffixIcon: sIcon != null ? Icon(sIcon) : null,
          hintText: hintText ?? "Enter your data",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: BorderSide(color: inColor ?? Colors.red),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: BorderSide(color: offColor ?? Colors.green),
          ),
        ),
      ),
    );
  }
}
