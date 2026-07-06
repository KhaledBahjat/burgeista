import 'package:burgeista/core/constant/app_color.dart';
import 'package:burgeista/core/constant/spacing.dart';
import 'package:burgeista/core/widgets/coustom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.isLoading,
    required this.image,
    required this.text,
    required this.desc,
    this.onAdd,
    this.onMin,
    this.onRemove,
    required this.number,
  });
  final bool isLoading;
  final String image , text , desc;
  final Function() ? onAdd;
  final Function() ? onMin;
  final Function() ? onRemove;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        color: Colors.white,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(image, width: 80),
                  SizedBox(
                      width: 170,
                      child: CoustomText(text: text, fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  CoustomText(text: desc, fontSize: 13),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: onAdd,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColor.primaryColor,
                          child: Icon(CupertinoIcons.add, color: Colors.white, size: 15),
                        ),
                      ),
                      WidthSpace(20),
                      CoustomText(text: number.toString() , fontWeight: FontWeight.w400, fontSize: 20),
                      WidthSpace(20),
                      GestureDetector(
                        onTap: onMin,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColor.primaryColor,
                          child: Icon(CupertinoIcons.minus, color: Colors.white, size: 15,),
                        ),
                      ),
                    ],
                  ),
                  HeightSpace(20),
          
                  GestureDetector(
                    onTap: onRemove,
                    child: Container(
                      height: 40,
                      width:  130,
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child:
                      isLoading ? CupertinoActivityIndicator(color: Colors.white) :
                      Center(child: CoustomText(text: 'Remove', color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}