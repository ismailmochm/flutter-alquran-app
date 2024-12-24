import 'package:alquran_app/core/configs/theme/app_colors.dart';
import 'package:alquran_app/core/configs/theme/app_styles.dart';
import 'package:alquran_app/presentation/widgets/button_type_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 30.h),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0), // Radius gambar
                  child: Image.asset(
                    'assets/images/img_splash.png',
                    width: 400.w,
                    height: 400.h,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Hafiz",
                    style: textSemiBoldPaleTeal.copyWith(fontSize: size25.sp),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.w, bottom: 20.w),
                  child: Text(
                    "Pelajari Quran dan\nBacalah setiap hari",
                    style: textMediumWhite.copyWith(fontSize: size20.sp),
                  ),
                ),
                ButtonType1(
                  text: "Get Started",
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                )
              ],
            ),
          ),
        ));
  }
}
