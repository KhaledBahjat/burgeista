import 'package:burgeista/core/constant/app_color.dart';
import 'package:burgeista/core/constant/spacing.dart';
import 'package:burgeista/core/widgets/coustom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/logo2.svg',
              colorFilter: const ColorFilter.mode(
                AppColor.primaryColor,
                BlendMode.srcIn,
              ),
              height: 35.h,
            ),
            HeightSpace(5),
            CoustomText(
              text: 'Hello, Ledo',
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xFF6A6A6A),
            ),
          ],
        ),

        Spacer(),

        CircleAvatar(
          backgroundColor: AppColor.primaryColor,
          radius: 31.r,child: Icon(CupertinoIcons.person,size: 30.sp,color: Colors.white,),),
      ],
    );
  }
}
