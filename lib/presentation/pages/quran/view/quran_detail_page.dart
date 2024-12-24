import 'package:alquran_app/core/configs/theme/app_colors.dart';
import 'package:alquran_app/core/configs/theme/app_styles.dart';
import 'package:alquran_app/presentation/pages/quran/model/quran_detail_model.dart';
import 'package:alquran_app/presentation/pages/quran/provider/quran_detail_provider.dart';
import 'package:alquran_app/presentation/pages/quran/provider/quran_provider.dart';
import 'package:alquran_app/presentation/pages/quran/view/quran_simple_page.dart';
import 'package:alquran_app/presentation/widgets/card_detail.dart';
import 'package:alquran_app/presentation/widgets/card_list_detail.dart';
import 'package:alquran_app/util/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:share_plus/share_plus.dart';

class QuranDetailPage extends ConsumerStatefulWidget {
  final String? nomorQuran;
  const QuranDetailPage({super.key, this.nomorQuran});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _QuranDetailPageState();
  }
}

class _QuranDetailPageState extends ConsumerState<QuranDetailPage> {
  
  @override
  Widget build(BuildContext context) {
    final dataDetailQuran =
        ref.watch(quranDetailResultProvider(widget.nomorQuran ?? ""));
    final dataQuran = ref.watch(itemProvider);
    final isPlaying = ref.watch(isPlayingProvider);
    final isMediumText = ref.watch(isMediumTextProvider);
    final isLargeText = ref.watch(isLargeTextProvider);
    final indexPlay = ref.watch(indexPlayProvider);
    final selectedItem = ref.watch(selectedItemProvider);
    final playerAudio = ref.read(playerPovider.notifier);

    return Scaffold(
        body: dataDetailQuran.when(
      data: (dataDetail) => Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.h),
                child: CardDetail(
                  onPressedName: () {
                    showFullScreenBottomSheet(context, dataQuran);
                  },
                  title: dataDetail.data?.nama,
                  widgetRight: PopUpItemMenu(selectedItem: selectedItem, playerAudio: playerAudio, ref: ref, isPlaying: isPlaying, isMediumText: isMediumText, isLargeText: isLargeText, dataDetail: dataDetail,),
                ),
              ),
              Expanded(
                flex: 1,
                child: ListView.builder(
                    itemCount: dataDetail.data?.ayat?.length,
                    itemBuilder: (context, index) {
                      final item = dataDetail.data?.ayat?[index];
                      return Container(
                        padding: EdgeInsets.only(
                            left: 20.w, right: 20.w, top: 10.w, bottom: 20.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          spacing: 15.w,
                          children: [
                            CardListDetail(
                              nomor: item?.nomorAyat.toString(),
                              onPressPlay: () {
                                if (!isPlaying) {
                                  playerAudio.playAudio(
                                      item?.audio, item?.nomorAyat);
                                } else {
                                  if (indexPlay != item?.nomorAyat) {
                                    playerAudio.stopAudio();
                                    Future.delayed(const Duration(seconds: 1))
                                        .then((val) {
                                      playerAudio.playAudio(
                                          item?.audio, item?.nomorAyat);
                                    });
                                  } else {
                                    playerAudio.stopAudio();
                                  }
                                }
                              },
                              onPressShare: () {
                                Share.share(item?.teksArab ?? "-",
                                    subject: item?.teksLatin ?? "-");
                              },
                              isPlaying: indexPlay == item?.nomorAyat,
                            ),
                            Container(
                              alignment: AlignmentDirectional.centerEnd,
                              child: Text(item?.teksArab ?? "-",
                                  textAlign: TextAlign.end,
                                  style: isDarkMode(context)
                                      ? textSemiBoldWhite.copyWith(
                                          fontSize: isMediumText
                                              ? size25.sp
                                              : isLargeText
                                                  ? size30.sp
                                                  : size20.sp)
                                      : textSemiBoldPrimary.copyWith(
                                          fontSize: isMediumText
                                              ? size25.sp
                                              : isLargeText
                                                  ? size30.sp
                                                  : size20.sp)),
                            ),
                            Text(
                              item?.teksLatin ?? "-",
                              textAlign: TextAlign.start,
                              style: isDarkMode(context)
                                  ? textRegularWhite.copyWith(
                                      fontSize: isMediumText
                                          ? size25.sp
                                          : isLargeText
                                              ? size30.sp
                                              : size20.sp)
                                  : textRegularPrimary.copyWith(
                                      fontSize: isMediumText
                                          ? size25.sp
                                          : isLargeText
                                              ? size30.sp
                                              : size20.sp),
                            ),
                            Divider(
                              color: isDarkMode(context)
                                  ? AppColors.white
                                  : AppColors.greye0, // Warna garis
                              thickness: 0.5, // Ketebalan garis
                            ),
                          ],
                        ),
                      );
                    }),
              )
            ],
          )),
      loading: () => Center(child: CircularProgressIndicator()),
      error: (err, stack) => Text('Error: $err'),
    ));
  }
}

class PopUpItemMenu extends StatelessWidget {
  const PopUpItemMenu({
    super.key,
    required this.selectedItem,
    required this.playerAudio,
    required this.ref,
    required this.isPlaying,
    required this.isMediumText,
    required this.isLargeText,
    required this.dataDetail,
  });

  final SampleItem? selectedItem;
  final AudioNotifier playerAudio;
  final WidgetRef ref;
  final bool isPlaying;
  final bool isMediumText;
  final bool isLargeText;
  final QuranDetailModel dataDetail;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<SampleItem>(
      icon: Icon(
        Icons.more_vert,
        color: AppColors.white,
      ),
      initialValue: selectedItem,
      onSelected: (SampleItem item) {
        if (item == SampleItem.itemOne) {
          playerAudio.playAudio(dataDetail.data?.audioFull, 0);
        }
        ref.read(selectedItemProvider.notifier).state = item;
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<SampleItem>>[
        PopupMenuItem<SampleItem>(
          value: SampleItem.itemOne,
          child: ListTile(
            trailing: isPlaying
                ? Icon(
                    Icons.stop,
                    size: 25.w,
                  )
                : SvgPicture.asset(
                    'assets/icons/ic_play.svg',
                    height: 20.h, // Set desired height
                    width: 20.w, // Set desired width
                  ),
            title: Text(isPlaying ? "Stop" : 'Play'),
          ),
        ),
        PopupMenuItem<SampleItem>(
          value: SampleItem.itemTwo,
          child: ListTile(
            trailing: Container(
                padding: EdgeInsets.all(5),
                child: Transform.scale(
                  scale: 0.8,
                  child: CupertinoSwitch(
                    value: isMediumText,
                    onChanged: (bool value) {
                      ref
                          .read(isLargeTextProvider.notifier)
                          .state = false;
                      ref
                          .read(isMediumTextProvider.notifier)
                          .state = value;
                      Navigator.pop(context);
                    },
                  ),
                )),
            title: const Text('Medium Text'),
          ),
        ),
        PopupMenuItem<SampleItem>(
          value: SampleItem.itemThree,
          child: ListTile(
            trailing: Container(
                padding: EdgeInsets.all(5),
                child: Transform.scale(
                  scale: 0.8,
                  child: CupertinoSwitch(
                    value: isLargeText,
                    onChanged: (bool value) {
                      ref
                          .read(isMediumTextProvider.notifier)
                          .state = false;
                      ref
                          .read(isLargeTextProvider.notifier)
                          .state = value;
                      Navigator.pop(context);
                    },
                  ),
                )),
            title: const Text('Large Text'),
          ),
        ),
        PopupMenuItem<SampleItem>(
            value: SampleItem.itemFour,
            child: InkWell(
              onTap: () async {
                ref.read(dataDetailSuratProvider.notifier).state = dataDetail.data;
                Navigator.pop(context);
                await Future.delayed(Duration(milliseconds: 100),
                    () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuranSimplePage(),
                    ),
                  );
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Mode Simple'),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18.w,
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
