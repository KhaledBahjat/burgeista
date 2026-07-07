import 'package:burgeista/core/constant/app_color.dart';
import 'package:burgeista/core/constant/spacing.dart';
import 'package:burgeista/core/widgets/coustom_text.dart';
import 'package:burgeista/core/widgets/total_with_btn_widget.dart';
import 'package:burgeista/features/checkout/widgets/coustomdetails_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckOutView extends StatefulWidget {
  CheckOutView({super.key});

  @override
  State<CheckOutView> createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {
  String selectedMethod = "Cash";
  bool isChecked = false;

  void _showPaymentSuccessDialog() {
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        return Dialog(
          backgroundColor: Colors.transparent,
          
          elevation: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 28.h),
            decoration: BoxDecoration(
              color:  Colors.black,
              borderRadius: BorderRadius.circular(24.r),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 74.w,
                  height: 74.w,
                  decoration: const BoxDecoration(
                    color: AppColor.primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                HeightSpace(18),
                CoustomText(
                  text: 'Success !',
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: AppColor.primaryColor,
                ),
                HeightSpace(12),
                CoustomText(
                  text: 'Your payment was successful.\nA receipt for this purchase has\nbeen sent to your email.',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFFB7B7B7),
                ),
                HeightSpace(28),
                SizedBox(
                  width: double.infinity,
                  height: 54.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                    ),
                    onPressed: () => Navigator.of(dialogContext).pop(),
                    child: const Text(
                      'Go Back',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CoustomText(
          text: 'Order summary',
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 36.w),
            child: Column(
              children: [
                CoustomDetails(mainInfo: 'Order', price: '\$18.19'),
                HeightSpace(10),
                CoustomDetails(mainInfo: 'Tax', price: '\$1.81'),
                HeightSpace(10),
                CoustomDetails(mainInfo: 'Delivery', price: '\$2.00'),
                HeightSpace(10),
                Divider(color: const Color(0xff7D7D7D), thickness: 1),
                HeightSpace(24),
                CoustomDetails(
                  mainInfo: 'Total',
                  otherInfo: '',
                  price: '\$22.00',
                  textColor: const Color(0xff000000),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                HeightSpace(20),
                CoustomDetails(
                  mainInfo: 'Estimated delivery time:',
                  otherInfo: '15 - 30 mins',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  textColor: Color(0xff3C2F2F),
                ),
              ],
            ),
          ),

          HeightSpace(70),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CoustomText(
                  text: 'Payment methods',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff3C2F2F),
                ),
                HeightSpace(18),

                // Cash on delivery
                ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  tileColor: Color(0xff3C2F2F),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 16,
                  ),
                  leading: Image.asset('assets/test/dolar.png', width: 50),
                  title: CoustomText(
                    text: 'Cash on Delivery',
                    color: Colors.white,
                  ),
                  trailing: Radio<String>(
                    activeColor: AppColor.primaryColor,
                    value: 'Cash',
                    groupValue: selectedMethod,
                    onChanged: (v) => setState(() => selectedMethod = v!),
                  ),
                  onTap: () => setState(() => selectedMethod = 'Cash'),
                ),
              
                HeightSpace(10),

                // Visa
                ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  tileColor: Colors.blue.shade900,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 16,
                  ),
                  leading: Image.asset('assets/test/visa.png', width: 50),
                  title: CoustomText(text: 'Debit card', color: Colors.white),
                  subtitle: CoustomText(
                    text: '**** ***** 2342',
                    color: Colors.white,
                  ),
                  trailing: Radio<String>(
                    activeColor: AppColor.primaryColor,
                    value: 'Visa',
                    groupValue: selectedMethod,
                    onChanged: (v) => setState(() => selectedMethod = v!),
                  ),
                  onTap: () => setState(() => selectedMethod = 'Visa'),
                ),
              
              
                HeightSpace(10),
             
            
                GestureDetector(
                  onTap: () => setState(() {
                    isChecked = !isChecked;
                  }),
                  child: Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) => setState(() {
                          isChecked = value!;
                        }),
                        activeColor: AppColor.primaryColor,
                      ),
                      // WidthSpace(),
                      CoustomText(
                        text: 'Save card details for future payments',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff808080),
                      ),
                    ],
                  ),
                ),
            
              ],
            ),
          ),
        
        ],
      ),


      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: TotalWithBtnWidget(
          onAddT: _showPaymentSuccessDialog,
          buttonText: 'Pay Now',
          totalPrice: 22.00,
        ),
      ),
   
    );
  }
}
