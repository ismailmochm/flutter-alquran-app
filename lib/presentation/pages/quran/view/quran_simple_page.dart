import 'package:alquran_app/core/configs/theme/app_colors.dart';
import 'package:alquran_app/core/configs/theme/app_styles.dart';
import 'package:alquran_app/presentation/pages/quran/provider/quran_detail_provider.dart';
import 'package:alquran_app/presentation/pages/quran/provider/quran_simple_page_provider.dart';
import 'package:alquran_app/util/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum SettingItem { itemOne, itemTwo }

class QuranSimplePage extends ConsumerWidget {
  const QuranSimplePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataDetail = ref.watch(dataDetailSuratProvider);
    final isMediumText = ref.watch(isMediumTextSimplePageProvider);
    final isLargeText = ref.watch(isLargeTextSimplePageProvider);
    final dataString = dataDetail?.ayat
        ?.map((item) => "${item.teksArab} (${item.nomorAyat}) ")
        .join();

    return Scaffold(
      appBar: AppBar(
        title: Text(dataDetail!.namaLatin),
        actions: [
          PopupMenuButton<SettingItem>(
            icon: Icon(
              Icons.more_vert,
              color: isDarkMode(context) ? AppColors.white : AppColors.black,
            ),
            initialValue: SettingItem.itemOne,
            onSelected: (SettingItem item) {},
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<SettingItem>>[
              PopupMenuItem<SettingItem>(
                value: SettingItem.itemOne,
                child: ListTile(
                  trailing: Container(
                      padding: EdgeInsets.all(5),
                      child: Transform.scale(
                        scale: 0.8,
                        child: CupertinoSwitch(
                          value: isMediumText,
                          onChanged: (bool value) {
                            ref
                                .read(isLargeTextSimplePageProvider.notifier)
                                .state = false;
                            ref
                                .read(isMediumTextSimplePageProvider.notifier)
                                .state = value;
                            Navigator.pop(context);
                          },
                        ),
                      )),
                  title: const Text('Medium Text'),
                ),
              ),
              PopupMenuItem<SettingItem>(
                value: SettingItem.itemTwo,
                child: ListTile(
                  trailing: Container(
                      padding: EdgeInsets.all(5),
                      child: Transform.scale(
                        scale: 0.8,
                        child: CupertinoSwitch(
                          value: isLargeText,
                          onChanged: (bool value) {
                            ref
                                .read(isMediumTextSimplePageProvider.notifier)
                                .state = false;
                            ref
                                .read(isLargeTextSimplePageProvider.notifier)
                                .state = value;
                            Navigator.pop(context);
                          },
                        ),
                      )),
                  title: const Text('Large Text'),
                ),
              ),
            ],
          )
        ],
      ),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Image.asset(
            'assets/images/img_bg_simple_surah.png',
            width: MediaQuery.of(context).size.width.w,
            height: MediaQuery.of(context).size.height.w,
            fit: BoxFit.cover,
          ),
          Card(
            color: AppColors.white,
            elevation: 3.0, // Shadow of the card
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0), // Rounded edges
            ),
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              height: MediaQuery.of(context).size.height / 1.2,
              padding: EdgeInsets.all(20.w),
              child: SingleChildScrollView(
                child: Text(
                  dataString!,
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                  style: textMediumBlack4f.copyWith(fontSize: isMediumText ? size25.sp : isLargeText ? size30.sp : size20.sp),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
