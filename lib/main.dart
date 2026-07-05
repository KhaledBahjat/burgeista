import 'package:burgeista/core/routing/router_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  runApp(const Burgerista());
}
class Burgerista extends StatelessWidget {
  const Burgerista({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: Size(430, 932),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: RouterGenerator.router,
        title: "Burgerista",
      ),
    );
  }
}