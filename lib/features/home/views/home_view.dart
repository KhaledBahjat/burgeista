import 'package:burgeista/core/constant/app_color.dart';
import 'package:burgeista/core/constant/spacing.dart';
import 'package:burgeista/core/widgets/coustom_text.dart';
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
                          curve:  Curves.easeInOut,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                            vertical: 10.h,
                          ),
                          decoration: BoxDecoration(
                            color:selectedIndex == index ? AppColor.primaryColor : Color(0xFFF3F4F6),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: CoustomText(
                            text: categories[index],
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color:selectedIndex == index ? Colors.white : Color(0xFF6A6A6A),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
           
            
           
            ],
          ),
        ),
      ),
    );
  }
}

class SearchFeild extends StatelessWidget {
  const SearchFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: Colors.grey.withOpacity(0.7),
      elevation: 2,
      borderRadius: BorderRadius.circular(20.r),

      child: TextField(
        cursorColor: AppColor.primaryColor,
        decoration: InputDecoration(
          hintText: 'Search... ',
          hintStyle: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xFF6A6A6A),
          ),
          prefixIcon: Icon(CupertinoIcons.search, size: 30.sp),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

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

        CircleAvatar(radius: 31.r),
      ],
    );
  }
}
