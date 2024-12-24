import 'dart:collection';

import 'package:alquran_app/core/configs/theme/app_colors.dart';
import 'package:alquran_app/core/configs/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class CardDetail extends StatelessWidget {
  final String? title;
  final VoidCallback? onPressedName;
  final Widget widgetRight;
  const CardDetail({super.key, this.title, this.onPressedName, required this.widgetRight});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.asset(
              'assets/images/img_bg_header_quran.png',
              width: MediaQuery.of(context).size.width.w,
              height: 170.w,
              fit: BoxFit.cover,
            ),
            Container(
              // color: AppColors.green588,
              width: MediaQuery.of(context).size.width.w,
              height: 170.w,
              padding: EdgeInsets.only(left: 10.h, right: 10.h, bottom: 30.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        size: 30.w,
                        Icons.arrow_back_outlined,
                        color: AppColors.white,
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.only(left: 10.h, right: 10.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 15.w,
                                ),
                                InkWell(
                                  onTap: onPressedName,
                                  child: Text(title ?? "-",
                                      style: textBoldWhite.copyWith(
                                        fontSize: size20.sp,
                                        fontWeight: FontWeight.w800,
                                      )),
                                ),
                                IconButton(
                                    onPressed: onPressedName,
                                    icon: Icon(
                                      size: 15.w,
                                      Icons.keyboard_arrow_down,
                                      color: AppColors.white,
                                    ))
                              ],
                            ),
                            Divider(
                              color: AppColors.white, // Warna garis
                              thickness: 0.5, // Ketebalan garis
                              indent: 30.h, // Margin dari kiri
                              endIndent: 30.h, // Margin dari kanan
                            ),
                            Image.asset(
                              'assets/images/ic_bismillah.png',
                              width: 140.w,
                              height: 40.w,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      )),
                    widgetRight
                  // IconButton(
                  //     onPressed: () {},
                  //     icon: Icon(
                  //       size: 30.w,
                  //       Icons.more_vert,
                  //       color: AppColors.white,
                  //     )),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}


