import 'package:burgeista/core/constant/app_color.dart';
import 'package:burgeista/core/constant/spacing.dart';
import 'package:burgeista/core/widgets/costom_text_feild.dart';
import 'package:burgeista/core/widgets/coustom_btn.dart';
import 'package:burgeista/core/widgets/coustom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SignUpView extends StatefulWidget {
  SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  bool _obscureText = false;

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColor.primaryColor,
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              children: [
                SvgPicture.asset('assets/logo.svg', width: 600.w),
                CoustomText(
                  text: 'Register to discover the best burgers in town!',
                  color: Colors.white,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),

                HeightSpace(70),
                CoustomTextFeild(
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Name',
                  controller: nameController,
                ),
                HeightSpace(20),
                CoustomTextFeild(hintText: 'Phone', controller: phoneController),
                HeightSpace(20),
                CoustomTextFeild(
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Email Address',
                  controller: emailController,
                ),
                HeightSpace(20),
                CoustomTextFeild(
                  keyboardType: TextInputType.visiblePassword,
                  hintText: 'Password',
                  obscureText: _obscureText,
                  controller: passwordController,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
                HeightSpace(20),
                CoustomTextFeild(
                  keyboardType: TextInputType.visiblePassword,
                  hintText: 'Confirm Password',
                  obscureText: _obscureText,
                  controller: confirmPasswordController,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
                HeightSpace(20),
                //  Sign In Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.r),
                    ),
                    minimumSize: Size(200.w, 56.h),
                    // padding: EdgeInsets.symmetric(vertical: 16.h),
                  ),
                  onPressed: () {},
                  child: Text('Sign Up', style: TextStyle(color: AppColor.primaryColor)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
