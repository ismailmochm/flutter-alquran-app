import 'package:alquran_app/core/configs/theme/app_colors.dart';
import 'package:alquran_app/core/configs/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonType1 extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const ButtonType1({
    super.key,
    required this.text,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            padding:  EdgeInsets.symmetric(
                vertical: 8.0.h,
                horizontal: 16.0.w), // Padding untuk membuat tombol lebih kecil
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0.w), // Membuat tombol bulat
            ),
            backgroundColor: AppColors.oldLace),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              style: textMediumBlack.copyWith(fontSize: size15.sp),
            ),
            Container(
              margin: EdgeInsets.only(left: 5.w),
              child:  Icon(
                Icons.arrow_forward, // Ikon rumah
                size: 20.0.w, // Ukuran ikon
                color: Colors.black, // Warna ikon
              ),
            )
          ],
        ),
      ),
    );
  }
}
