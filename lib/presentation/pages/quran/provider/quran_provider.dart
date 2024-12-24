import 'package:alquran_app/presentation/pages/quran/model/quran_model.dart';
import 'package:alquran_app/repository/quran_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isSearchingProvider = StateProvider<bool>((ref) => false);
final dataSurahProvider = StateProvider<DataSurat?>((ref) => null);

final quranRepositoryProvider =
    Provider<QuranRepository>((ref) => QuranRepository());

final inputControllerProvider =
    Provider<TextEditingController>((ref) => TextEditingController());

class ItemNotifier extends StateNotifier<QuranModel> {
  final Ref ref;
  ItemNotifier(this.ref) : super(QuranModel());

  void fetchItems() async {
    final items = await ref.watch(quranRepositoryProvider).fetchListQuran();
    state = items;
  }

  void searchItems(String query, QuranModel items) {
    final dataItem = items.data
        ?.where((item) => item.nama.toLowerCase().contains(query.toLowerCase()))
        .toList();
    state = items.copyWith(data: dataItem);
  }
  
}

final itemProvider =
    StateNotifierProvider<ItemNotifier, QuranModel>((ref) => ItemNotifier(ref));
