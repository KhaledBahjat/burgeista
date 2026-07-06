import 'package:burgeista/core/constant/app_color.dart';
import 'package:burgeista/core/constant/spacing.dart';
import 'package:burgeista/core/widgets/coustom_text.dart';
import 'package:burgeista/features/proudcts/widgets/coustom_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddToCartWidget extends StatelessWidget {
  const AddToCartWidget({
    super.key,
  });
  final double totalPrice = 18.19;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(10.dg),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CoustomText(
                text: 'Total',
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF3B312E),
              ),
              HeightSpace(6),
              Text(
                '\$${totalPrice.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 29.sp,
                  fontWeight: FontWeight.w800,
                  color: AppColor.primaryColor,
                  letterSpacing: -0.6,
                ),
              ),
            ],
          ),
          const Spacer(),
          CoustomBtn(
            buttonText: 'Add To Cart',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}