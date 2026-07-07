import 'package:burgeista/core/widgets/coustom_text.dart';
import 'package:flutter/material.dart';

class CoustomDetails extends StatelessWidget {
  const CoustomDetails({
    super.key, required this.mainInfo,  this.otherInfo,  this.textColor, this.fontSize, this.fontWeight, this.price,
  });
  final String mainInfo;
  final String? otherInfo;
  final String? price;
  final Color? textColor ;
  final double? fontSize;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CoustomText(
          text: mainInfo,
          fontSize: fontSize ?? 18,
          fontWeight: fontWeight ?? FontWeight.w400,
          color: textColor ?? Color(0xff7D7D7D),
        ),
        const Spacer(),
        CoustomText(
          text: price ?? otherInfo ?? '',
          fontSize: fontSize ?? 18,
          fontWeight: fontWeight ?? FontWeight.w400,
          color: textColor ?? Color(0xff7D7D7D),
        ),
      ],
    );
  }
}