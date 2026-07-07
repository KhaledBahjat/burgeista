import 'package:burgeista/core/constant/app_color.dart';
import 'package:burgeista/features/auth/views/profile.dart';
import 'package:burgeista/features/cart/views/cart_view.dart';
import 'package:burgeista/features/home/views/home_view.dart';
import 'package:burgeista/features/orderhistory/views/order_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class RootView extends StatefulWidget {
  const RootView({super.key});

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  late List<Widget> screens;
  late PageController pageController;
  int currentIndex = 0;

  @override
  initState() {
    super.initState();
    pageController = PageController(initialPage: currentIndex);
    screens = [
       HomeView(),
      const CartView(),
       OrderHistoryView(),
      const ProfileView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            body: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: pageController,

              children: screens,
            ),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            
              ),
              child: GNav(
                onTabChange: (c) {
                  setState(() {
                    currentIndex = c;
                  });
                  pageController.jumpToPage(currentIndex);
                },
                backgroundColor: Colors.transparent,
                
                tabBorderRadius: 15,
                rippleColor: AppColor.primaryColor,
                hoverColor: AppColor.primaryColor.withOpacity(0.1),
                
                haptic: true,
                curve: Curves.easeOutExpo,
                duration: Duration(milliseconds: 400),
                gap: 8,
                color: Colors.grey,
                activeColor: Colors.white,
                iconSize: 24,
                tabBackgroundColor: AppColor.primaryColor.withValues(alpha: 0.1),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                tabs: [
                  GButton(icon: CupertinoIcons.home,iconSize: 24, text: 'Home', ),
                  GButton(icon: CupertinoIcons.cart, iconSize: 24, text: 'Cart'),
                  GButton(icon: Icons.restaurant_menu, iconSize: 24, text: 'Orders'),
                  GButton(icon: CupertinoIcons.person, iconSize: 24, text: 'Profile'),
                ],
              ),
            ),
          );
        }}
