import 'package:alquran_app/core/configs/theme/app_colors.dart';
import 'package:alquran_app/core/configs/theme/app_fonts.dart';
import 'package:alquran_app/core/configs/theme/app_styles.dart';
import 'package:alquran_app/presentation/pages/quran/model/quran_model.dart';
import 'package:alquran_app/presentation/widgets/list_all_quran.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum TypeSnackbar { success, warning, error }

MaterialColor validateColor(TypeSnackbar type) {
  if (type == TypeSnackbar.success) {
    return Colors.green;
  } else if (type == TypeSnackbar.warning) {
    return Colors.amber;
  } else {
    return Colors.red;
  }
}

void showTopSnackBar(
  context,
  String message,
  TypeSnackbar type, {
  Duration? duration,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
        dismissDirection: DismissDirection.up,
        duration: duration ?? const Duration(milliseconds: 1500),
        backgroundColor: validateColor(type),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            // Undo file deletion
          },
        ),
        margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height - 80.w,
            left: 10,
            right: 10),
        behavior: SnackBarBehavior.floating,
        content: Text(message,
            style: TextStyle(
                fontFamily: AppFonts.fontMedium,
                color: AppColors.white,
                fontSize: size15.sp))),
  );
}

bool isDarkMode(BuildContext context) {
  return MediaQuery.of(context).platformBrightness == Brightness.dark;
}

void showFullScreenBottomSheet(BuildContext context, QuranModel? dataQuran) {
  showModalBottomSheet(
    context: context,
    isDismissible: true,
    isScrollControlled: true, // Mengizinkan BottomSheet untuk tinggi penuh
    builder: (BuildContext context) {
      return Container(
          height: MediaQuery.of(context).size.height - 50, // Full height
          padding: EdgeInsets.only(top: 20.w, bottom: 20.w),
          child: ListAllQuaran(
            dataQuran: dataQuran,
            onPressed: (v) => {},
          ));
    },
  );
}
