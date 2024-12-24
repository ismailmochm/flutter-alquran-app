import 'package:alquran_app/presentation/pages/quran/model/quran_detail_model.dart';
import 'package:alquran_app/presentation/pages/quran/provider/quran_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';

enum SampleItem { itemOne, itemTwo, itemThree, itemFour }

final isPlayingProvider = StateProvider<bool>((ref) => false);
final isMediumTextProvider = StateProvider<bool>((ref) => false);
final isLargeTextProvider = StateProvider<bool>((ref) => false);
final indexPlayProvider = StateProvider<int>((ref) => 0);
final dataDetailSuratProvider = StateProvider<DetailSurat?>((ref) => null);

final selectedItemProvider = StateProvider<SampleItem?>((ref) => null);

final playerPovider = StateNotifierProvider.autoDispose<AudioNotifier, AudioPlayer>((ref) {
  final counterNotifier = AudioNotifier(ref);

  ref.onDispose(() {
    counterNotifier.cleanup(); // Custom cleanup logic
  });
  return counterNotifier;
});

class AudioNotifier extends StateNotifier<AudioPlayer> {
  final Ref ref;
  AudioNotifier(this.ref) : super(AudioPlayer());

  void playAudio(Map<String, dynamic>? data, int? playIndex) async {
    final isPlay = ref.watch(isPlayingProvider);
    try {
      if (!isPlay) {
        String value01 = data?['01'];
        await state.setUrl(value01); // Replace with your audio file URL
        if (playIndex != 0 && playIndex != null) {
          ref.read(indexPlayProvider.notifier).state = playIndex;
        } else {
          ref.read(isPlayingProvider.notifier).state = true;
        }
        state.play();
      } else {
        stopAudio();
      }
    } catch (e) {
      print(e);
    }
  }

  void stopAudio() {
    state.stop();
    ref.read(isPlayingProvider.notifier).state = false;
    ref.read(indexPlayProvider.notifier).state = 0;
  }

  void cleanup() {
    state.dispose();
  }
}

final quranDetailResultProvider =
    FutureProvider.family<QuranDetailModel, String>((ref, postId) async {
  return ref.watch(quranRepositoryProvider).fetchQuranByNomor(postId);
});
