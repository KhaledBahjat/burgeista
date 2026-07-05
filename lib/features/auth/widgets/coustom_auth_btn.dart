import 'package:burgeista/core/constant/app_color.dart';
import 'package:burgeista/core/widgets/coustom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomAuthBtn extends StatelessWidget {
  const CustomAuthBtn({super.key, this.onTap, required this.text, this.color, this.textColor, this.isIcon});
  final Function() ? onTap;
  final String text;
  final Color? color;
  final Color? textColor;
  final bool? isIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
            color: color ??  Colors.transparent,
            borderRadius: BorderRadius.circular(7),
            border: Border.all(
              color: Colors.white60.withOpacity(0.5),
            ),
        ),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: CoustomText(
              text: text,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: textColor ??  AppColor.primaryColor,
            )),
            if(isIcon == true)
            SizedBox(width: 5),
            if(isIcon == true)
            Icon(CupertinoIcons.person, color: Colors.grey.shade100,size: 16),
          ],
        ),
      ),
    );
  }
}