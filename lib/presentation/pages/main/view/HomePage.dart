import 'package:alquran_app/core/configs/theme/app_colors.dart';
import 'package:alquran_app/core/configs/theme/app_styles.dart';
import 'package:alquran_app/presentation/widgets/card_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColors.white,
            title: Text(
              "Hafiz",
              style: textBoldPrimary.copyWith(
                  fontSize: size20.sp, fontWeight: FontWeight.bold),
            ),
            centerTitle: true),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CardHome(),
                Container(
                    padding: EdgeInsets.all(30.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Populer",
                          style: textBoldPrimary.copyWith(fontSize: size20.sp),
                        ),
                        SizedBox(height: size20.h),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/quran');
                          },
                          child: Image.asset(
                            'assets/images/img_card_quran.png', // Replace with your image path
                            width: 150.w,
                            height: 150.w,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
