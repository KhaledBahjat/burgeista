import 'package:burgeista/core/constant/app_color.dart';
import 'package:burgeista/core/constant/spacing.dart';
import 'package:burgeista/core/routing/app_routs.dart';
import 'package:burgeista/core/widgets/costom_text_feild.dart';
import 'package:burgeista/core/widgets/coustom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  bool _obscureText = false;

  @override
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
                  text: 'Discover the best burgers in town!',
                  color: Colors.white,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),

                HeightSpace(70),
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
                HeightSpace(10),
                // Forgot Password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: CoustomText(
                      text: 'Forgot Password?',
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                HeightSpace(5),
                //  Sign In Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.r),
                      side: BorderSide(color: Colors.white),
                    ),
                    minimumSize: Size(200.w, 56.h),
                    // padding: EdgeInsets.symmetric(vertical: 16.h),
                  ),
                  onPressed: (){}, child: Text('Sign In',style: TextStyle(color: AppColor.primaryColor)),
                ),
                Spacer(),
                // Dont have an account? Sign Up
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CoustomText(
                      text: 'Don\'t have an account?',
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    TextButton(
                      onPressed: () =>GoRouter.of(context).pushReplacementNamed(AppRouts.signUpView),
                      child: CoustomText(
                        text: 'Sign Up',
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
