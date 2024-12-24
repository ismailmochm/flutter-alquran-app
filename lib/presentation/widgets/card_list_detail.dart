import 'package:alquran_app/core/configs/theme/app_colors.dart';
import 'package:alquran_app/core/configs/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardListDetail extends StatelessWidget {
  final String? nomor;
  final VoidCallback? onPressShare;
  final VoidCallback? onPressPlay;
  final VoidCallback? onPressBookmark;
  final bool isPlaying;
  const CardListDetail(
      {super.key,
      this.nomor,
      this.onPressShare,
      this.onPressPlay,
      this.onPressBookmark,
      required this.isPlaying});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.w, horizontal: 8.w),
      decoration: BoxDecoration(
        color: AppColors.greye0,
        borderRadius: BorderRadius.circular(8), // Border radius
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: AlignmentDirectional.center,
            padding: EdgeInsets.all(13),
            decoration: BoxDecoration(
                color: AppColors.green5C8, shape: BoxShape.circle),
            child: Text(nomor ?? "-",
                style: textSemiBoldWhite.copyWith(fontSize: size15.sp)),
          ),
          Row(
            spacing: 5.w,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/ic_share.svg',
                  height: 25.h, // Set desired height
                  width: 25.w, // Set desired width
                ),
                onPressed: onPressShare,
              ),
              IconButton(
                icon: isPlaying
                    ? Icon(
                        Icons.stop_sharp,
                        size: 30.w,
                      )
                    : SvgPicture.asset(
                        'assets/icons/ic_play.svg',
                        height: 25.h, // Set desired height
                        width: 25.w, // Set desired width
                      ),
                onPressed: onPressPlay,
              ),
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/ic_bookmark.svg',
                  height: 25.h, // Set desired height
                  width: 25.w, // Set desired width
                ),
                onPressed: onPressBookmark,
              ),
            ],
          )
        ],
      ),
    );
  }
}
