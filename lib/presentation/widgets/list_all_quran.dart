import 'package:alquran_app/core/configs/theme/app_colors.dart';
import 'package:alquran_app/core/configs/theme/app_styles.dart';
import 'package:alquran_app/presentation/pages/quran/model/quran_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListAllQuaran extends StatelessWidget {
  final QuranModel? _dataQuran;
  final Function(DataSurat) onPressed;
  const ListAllQuaran(
      {super.key, required QuranModel? dataQuran, required this.onPressed})
      : _dataQuran = dataQuran;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Container(
        child: ListView.builder(
      itemCount: _dataQuran!.data!.length,
      itemBuilder: (context, index) {
        final item = _dataQuran.data![index];
        return InkWell(
          onTap: () => onPressed(item),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 15.w),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColors.greye0, // Border color
                  width: 0.5, // Border thickness
                ),
              ),
            ),
            child: Row(
              spacing: 10.w,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/ic_bg_nomor.svg',
                      height: 35.h, // Set desired height
                      width: 35.w, // Set desired width
                    ),
                    Text(
                      "${item.nomor}",
                      style: isDarkMode ? textSemiBoldWhite.copyWith(fontSize: size12.sp) : textSemiBoldGreen183.copyWith(fontSize: size13.sp),
                    )
                  ],
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    spacing: 2.h,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.namaLatin,
                        style: isDarkMode ? textBoldWhite.copyWith(fontSize: 14.sp) : textSemiBoldGreen183.copyWith(fontSize: 14.sp),
                      ),
                      Text(
                        "${item.tempatTurun} \u2022 ${item.jumlahAyat} ayat",
                        style: isDarkMode ? textMediumWhite.copyWith(fontSize: 12.sp) : textMediumBlack4f.copyWith(fontSize: 12.sp),
                      ),
                    ],
                  ),
                ),
                Text(
                  item.nama,
                  style: isDarkMode ? textSemiBoldWhite.copyWith(fontSize: size20.sp) : textSemiBoldGreen588.copyWith(fontSize: size20.sp),
                )
              ],
            ),
          ),
        );
      },
    ));
  }
}
