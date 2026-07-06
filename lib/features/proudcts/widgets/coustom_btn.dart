import 'package:burgeista/core/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoustomBtn extends StatelessWidget {
  const CoustomBtn({required this.onTap, required this.buttonText, this.height, this.width, this.textSize});

  final VoidCallback onTap;
  final String buttonText;
  final double? height, width;
  final double?textSize;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(22.r),
        child: Container(
          height: height ?? 64.h,
          width: width ?? 180.w,
          decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(22.r),
            boxShadow: [
              BoxShadow(
                color: AppColor.primaryColor.withOpacity(0.28),
                blurRadius: 18,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          alignment: Alignment.center,
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: textSize ?? 18.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
