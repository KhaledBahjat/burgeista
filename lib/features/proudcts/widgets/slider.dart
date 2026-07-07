import 'package:burgeista/core/constant/app_color.dart';
import 'package:burgeista/core/constant/spacing.dart';
import 'package:burgeista/core/widgets/coustom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpicyCoustomized extends StatelessWidget {
  const SpicyCoustomized({
    super.key, required this.value, this.onChanged,
  });
  final double value;
  final void Function(double)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/test/detils.png", height: 300.h),
    
        Spacer(),
        Column(
          children: [
            CoustomText(
              text:
                  'Customize Your Burger\n to Your Tastes. Ultimate\n Experience',
              fontSize: 13.sp,
              fontWeight: FontWeight.w800,
              color: const Color(0xFF3B312E),
            ),
    
            Slider(
              value: value,
              onChanged: onChanged,
              min: 0,
              max: 1,
              activeColor: AppColor.primaryColor,
            ),
    
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('🥶'),
                WidthSpace(100),
                Text(
                  '🌶️',
                  style: TextStyle(fontSize: 16.sp),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}