import 'package:alquran_app/core/configs/theme/app_colors.dart';
import 'package:alquran_app/core/configs/theme/app_styles.dart';
import 'package:alquran_app/presentation/pages/quran/model/quran_model.dart';
import 'package:alquran_app/presentation/pages/quran/provider/quran_provider.dart';
import 'package:alquran_app/presentation/pages/quran/view/quran_detail_page.dart';
import 'package:alquran_app/presentation/widgets/list_all_quran.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuranPage extends ConsumerStatefulWidget {
  const QuranPage({super.key});

  @override
  ConsumerState<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends ConsumerState<QuranPage> {
  @override
  void initState() {
    super.initState();
    ref.read(itemProvider.notifier).fetchItems();
  }

  @override
  Widget build(BuildContext context) {
    final isSearching = ref.watch(isSearchingProvider);
    final searchController = ref.watch(inputControllerProvider);
    final itemsData = ref.watch(itemProvider);

    void handleClickItem(DataSurat item) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => QuranDetailPage(nomorQuran: "${item.nomor}"),
        ),
      );
    }

    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, d) {
        if (isSearching) {
          ref.read(isSearchingProvider.notifier).state = false;
          ref.read(inputControllerProvider).clear();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white,
          title: isSearching
              ? SizedBox(
                  height: 40.h,
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      fillColor: AppColors.greyf2,
                      hintStyle: textMediumGreyBd.copyWith(fontSize: 13.sp),
                    ),
                    style: const TextStyle(color: Colors.white),
                    autofocus:
                        true, // Automatically focus when search is active
                    onChanged: (query) {
                      ref
                          .read(itemProvider.notifier)
                          .searchItems(query, itemsData);
                    },
                  ),
                )
              : Text(
                  "Al-Quran",
                  style: textSemiBoldPrimary,
                ),
          actions: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/ic_search.svg',
                height: 20.h, // Set desired height
                width: 20.w, // Set desired width
              ),
              onPressed: () {
                if (isSearching) {
                  ref.read(isSearchingProvider.notifier).state = false;
                  ref.read(inputControllerProvider).clear();
                } else {
                  ref.read(isSearchingProvider.notifier).state = true;
                }
              },
            )
          ],
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              if (isSearching) {
                ref.read(isSearchingProvider.notifier).state = false;
                ref.read(inputControllerProvider).clear();
              } else {
                Navigator.pop(context); // Or perform custom actions here
              }
            },
          ),
        ),
        body: ListAllQuaran(
          dataQuran: itemsData,
          onPressed: (v) => handleClickItem(v),
        ),
      ),
    );
  }
}
