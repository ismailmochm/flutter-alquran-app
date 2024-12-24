import 'package:alquran_app/core/configs/theme/app_colors.dart';
import 'package:alquran_app/core/configs/theme/app_styles.dart';
import 'package:alquran_app/presentation/widgets/button_type_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardHome extends StatelessWidget {
  const CardHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     final width = MediaQuery.of(context).size.width / 1.1;

    return Center(
      child: Container(
        margin: EdgeInsets.only(top: size10.h),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.asset(
              'assets/images/img_bg_home.png',
              width: width.w,
              height: 180.w,
              fit: BoxFit.fill,
            ),
            Container(
              width: width.w,
              height: 150.w,
              padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 3.w),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Last Read",
                              style: textMediumWhite.copyWith(fontSize: size15.sp),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(top: size12.w, bottom: size10.w),
                              child: Column(
                                children: [
                                  Text("ةحتافلا",
                                      style: textMediumWhite.copyWith(
                                          fontSize: size20.sp)),
                                  Text(
                                    "Ayah no. 1",
                                    style: textMediumWhite.copyWith(
                                        fontSize: size15.sp),
                                  ),
                                ],
                              ),
                            ),
                            ButtonType1(
                              text: "Lanjutkan",
                              onPressed: () {
                                Navigator.pushNamed(context, '/quran');
                              },
                            ),
                          ],
                        ),
                      )),
                  Image.asset(
                    'assets/images/img_logo.png',
                    width: 150.w,
                    height: 150.w,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
