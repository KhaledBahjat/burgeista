import 'package:burgeista/core/constant/app_color.dart';
import 'package:burgeista/core/constant/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Column(
        children: [
          HeightSpace(290),
          Padding(
            padding: EdgeInsets.only(left: 100.w),
            child: Center(
              child: SvgPicture.asset('assets/logo.svg', width: 600.w),
            ),
          ),
          Spacer(),
          Image.asset('assets/spl.png', width: 439.w,),
        ],
      ),
    );
  }
}
