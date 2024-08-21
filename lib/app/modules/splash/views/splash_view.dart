import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/constants.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    var theme = context.theme;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Text.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: 'Alışveriş ',
                      style: theme.textTheme.displayMedium
                          ?.copyWith(color: theme.primaryColor),
                    ),
                    TextSpan(
                      text: 'Uygulaması ',
                      style: theme.textTheme.displayMedium,
                    ),
                  ]),
                ).animate().fade().slideY(
                    duration: const Duration(seconds: 4),
                    begin: 5,
                    curve: Curves.easeInSine),
              ),
              Image.asset(
                Constants.logo,
                height: 650.h,
                width: 550.h,
              ).animate().fade().slideY(
                  duration: const Duration(seconds: 2),
                  begin: 1,
                  curve: Curves.easeInSine),
            ],
          ),
        ),
      ),
    );
  }
}
