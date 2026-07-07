import 'package:burgeista/core/constant/spacing.dart';
import 'package:burgeista/core/widgets/coustom_text.dart';
import 'package:burgeista/core/widgets/total_with_btn_widget.dart';
import 'package:burgeista/features/proudcts/widgets/option_card.dart';
import 'package:burgeista/features/proudcts/widgets/slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProudctDetailsView extends StatefulWidget {
  const ProudctDetailsView({super.key});

  @override
  State<ProudctDetailsView> createState() => _ProudctDetailsViewState();
}

class _ProudctDetailsViewState extends State<ProudctDetailsView> {
  double _sliderValue = 0.5;
  List<String> toppings = [
    'Onion',
    'Mushrooms',
    'Peppers',
    'Olives',
    'Tomatoes',
    'Bell Peppers',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpicyCoustomized(
              value: _sliderValue,
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
                // log("Slider Value: $_sliderValue");
              },
            ),

            HeightSpace(50),
            CoustomText(
              text: 'Toppings',
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF3B312E),
            ),
            HeightSpace(10),
            SizedBox(
              height: 125.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: toppings.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    image: 'assets/test/tom.png',
                    name: 'tomato',
                    onAdd: () {},
                  );
                },
              ),
            ),
            HeightSpace(20),

            CoustomText(
              text: 'Side Options',
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF3B312E),
            ),
            HeightSpace(10),
            SizedBox(
              height: 125.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: toppings.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    image: 'assets/test/sald.png',
                    name: 'tomato',
                    onAdd: () {},
                  );
                },
              ),
            ),

           
          ],
        ),
      ),
      bottomSheet:  Container(
        height: 100.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, -2),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: TotalWithBtnWidget(
                buttonText: 'Add to Cart',
                onAddT: () {},
                totalPrice: 18.19,
              ),
      ),
    );
  }
}
