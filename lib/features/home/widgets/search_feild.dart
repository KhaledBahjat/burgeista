import 'package:burgeista/core/constant/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchFeild extends StatelessWidget {
  const SearchFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: Colors.grey.withOpacity(0.7),
      elevation: 2,
      borderRadius: BorderRadius.circular(12.r),

      child: TextField(
        cursorColor: AppColor.primaryColor,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: 'Search... ',
          hintStyle: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xFF6A6A6A),
          ),
          prefixIcon: Icon(CupertinoIcons.search, size: 30.sp),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

