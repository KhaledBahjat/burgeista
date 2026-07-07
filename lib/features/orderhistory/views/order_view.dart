import 'package:burgeista/core/constant/spacing.dart';
import 'package:burgeista/core/widgets/coustom_text.dart';
import 'package:burgeista/features/proudcts/widgets/coustom_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderHistoryView extends StatelessWidget {
  const OrderHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 120.h, top: 10.h),
          itemCount: 6,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              bottom: -5,
                              right: 0,
                              left: 0,
                              child: Image.asset('assets/shadow.png'),
                            ),
                            Center(
                              child: Image.asset(
                                'assets/tst.png',
                                width: 90,
                                height: 90,
                              ),
                            ),
                          ],
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CoustomText(
                                text: 'Cheese Burger',
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              CoustomText(text: 'Qty : 4', fontSize: 14),
                              CoustomText(
                                text: 'Price : \$12.99',
                                fontSize: 14,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const HeightSpace(20),
                    CoustomBtn(
                      onTap: () {},
                      height: 45,
                      buttonText: 'Order Again',
                      color: Colors.grey.shade400,
                      width: double.infinity,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
