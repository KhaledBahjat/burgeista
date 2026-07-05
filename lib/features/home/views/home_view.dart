import 'package:burgeista/core/constant/app_color.dart';
import 'package:burgeista/core/constant/spacing.dart';
import 'package:burgeista/core/widgets/coustom_text.dart';
import 'package:burgeista/features/home/widgets/header.dart';
import 'package:burgeista/features/home/widgets/proudct_card.dart';
import 'package:burgeista/features/home/widgets/search_feild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> categories = ['All', 'Combos', 'Sliders', 'Classics', 'Drinks'];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              HeightSpace(40),
              Header(),
              HeightSpace(17),
              SearchFeild(),
              HeightSpace(41),
              SizedBox(
                height: 40.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: GestureDetector(
                        onTap: () {
                          selectedIndex = index;
                          setState(() {});
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                            vertical: 10.h,
                          ),
                          decoration: BoxDecoration(
                            color: selectedIndex == index
                                ? AppColor.primaryColor
                                : Color(0xFFF3F4F6),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: CoustomText(
                            text: categories[index],
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: selectedIndex == index
                                ? Colors.white
                                : Color(0xFF6A6A6A),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              HeightSpace(10),
              Expanded(
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 31.h,
                    crossAxisSpacing: 22.w,
                    childAspectRatio: 0.7,
                  ),
                  itemBuilder: (context, index) {
                    return Item(
                      txt: 'Item ${index+1}',
                      imagePath: 'assets/tst.png',
                      rating: 5,
                      description: 'Description for Item $index',
                    );
                  },
                ),
              ),

              // Cont
            ],
          ),
        ),
      ),
    );
  }
}


