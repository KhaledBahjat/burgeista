
import 'package:burgeista/core/constant/app_color.dart';
import 'package:burgeista/core/constant/spacing.dart';
import 'package:burgeista/core/widgets/coustom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.txt, required this.imagePath, required this.rating, required this.description});
  final String txt;
  final String imagePath;
  final int rating;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              height: 120.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            HeightSpace(10),
            CoustomText(
              text: txt,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
            HeightSpace(5),
            CoustomText(
              text: description,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xFF6A6A6A),
            ),
            HeightSpace(10),
            Row(
              children: [
            Text( 
                  '⭐',
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
                WidthSpace(5),
                CoustomText(
                  text: rating.toString(),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColor.primaryColor,
                ),
                Spacer(),
                Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Icon(Icons.add, color: Colors.white, size: 20.sp),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}