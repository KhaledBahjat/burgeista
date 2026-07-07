import 'package:burgeista/core/constant/app_color.dart';
import 'package:flutter/material.dart';

class CustomUserTxtField extends StatelessWidget {
  const CustomUserTxtField({
    super.key,
    required this.controller,
    required this.label,
    this.textInputType,
  });
  final TextEditingController controller;
  final String label;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorHeight: 20,
      controller: controller,
      keyboardType: textInputType,
      cursorColor: AppColor.primaryColor,
      style: TextStyle(color: AppColor.primaryColor, fontSize: 14),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        labelText: label,
        labelStyle: TextStyle(color: AppColor.primaryColor),
        hintStyle: TextStyle(color: AppColor.primaryColor),
        enabledBorder: OutlineInputBorder(
          
          borderSide: BorderSide(color: AppColor.primaryColor,width: 2),
          borderRadius: BorderRadius.circular(25),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.primaryColor,width: 2),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}