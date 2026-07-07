import 'package:burgeista/core/constant/app_color.dart';
import 'package:burgeista/core/constant/spacing.dart';
import 'package:burgeista/core/routing/app_routs.dart';
import 'package:burgeista/core/widgets/costom_text_feild.dart';
import 'package:burgeista/core/widgets/coustom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  bool _obscureText = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              HeightSpace(100),
              SvgPicture.asset(
                'assets/test/logo2.svg',
                color: AppColor.primaryColor,
              ),
              CoustomText(
                text: 'Register to discover the best burgers in town!',
                // color: Colors.white,
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
              ),

              HeightSpace(70),

              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20.w),
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          keyboardDismissBehavior:
                              ScrollViewKeyboardDismissBehavior.onDrag,
                          child: Column(
                            children: [
                              HeightSpace(20),

                              CoustomTextFeild(
                                keyboardType: TextInputType.name,
                                hintText: 'Name',
                                controller: nameController,
                              ),

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
                                    _obscureText
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: AppColor.primaryColor,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                ),
                              ),

                              HeightSpace(30),

                              SizedBox(
                                width: double.infinity,
                                height: 56.h,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.r),
                                    ),
                                  ),
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {

                                    }
                                  },
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      color: AppColor.primaryColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const Divider(color: Colors.white24),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CoustomText(
                            text: 'Do you have an account?',
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          TextButton(
                            onPressed: () {
                              context.pushReplacementNamed(AppRouts.signInView);
                            },
                            child: CoustomText(
                              text: 'Sign In',
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),

                      HeightSpace(10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
