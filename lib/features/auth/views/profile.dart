import 'package:burgeista/core/constant/app_color.dart';
import 'package:burgeista/core/constant/spacing.dart';
import 'package:burgeista/core/widgets/coustom_text.dart';
import 'package:burgeista/features/auth/widgets/coustom_text_feild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _address = TextEditingController();

  String selectedMethod = "Visa";
  bool isGuest = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: AnimatedPadding(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeOut,
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),

            child: SingleChildScrollView(
              child: Column(
                children: [
                  HeightSpace(10),
                  /// image
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.black),
                      color: Colors.grey.shade300,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(3),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 1,
                              color: AppColor.primaryColor,
                            ),
                            color: Colors.grey.shade100,
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Icon(Icons.person),
                        ),
                      ),
                    ),
                  ),
                  HeightSpace(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Card(
                          elevation: 0.0,
                          color: AppColor.primaryColor,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 8,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CoustomText(
                                  text: 'Upload',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 13.sp,
                                ),
                                WidthSpace(10),
                                Icon(
                                  CupertinoIcons.camera,
                                  size: 17,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: () {},
                        child: Card(
                          elevation: 0.0,
                          color: Colors.red.shade900,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 8,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CoustomText(
                                  text: 'Remove',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 13.sp,
                                ),
                                WidthSpace(10),
                                Icon(
                                  CupertinoIcons.trash,
                                  size: 16,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  HeightSpace(10),

                  Column(
                    children: [
                      CustomUserTxtField(controller: _name, label: 'Name'),
                      HeightSpace(25),
                      CustomUserTxtField(controller: _email, label: 'Email'),
                      HeightSpace(25),
                      CustomUserTxtField(
                        controller: _address,
                        label: 'Address',
                      ),
                      HeightSpace(20),
                      Divider(),
                      HeightSpace(10),

                      HeightSpace(5),

                      // Visa Card Details
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
                        title: CoustomText(
                          text: 'Debit card',
                          color: Colors.white,
                        ),
                        subtitle: CoustomText(
                          text: '**** ***** 2342',
                          color: Colors.white,
                        ),
                        trailing: CoustomText(
                          text: 'Default',
                          color: Colors.white,
                        ),
                        onTap: () => setState(() => selectedMethod = 'Visa'),
                      ),
                      HeightSpace(40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// Edit
                          Expanded(
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: AppColor.primaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: CoustomText(
                                    text: 'Edit Profile',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      
                          WidthSpace(10),
                      
                          /// logout
                          Expanded(
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: AppColor.primaryColor,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: CoustomText(
                                    text: 'Logout',
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.primaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
