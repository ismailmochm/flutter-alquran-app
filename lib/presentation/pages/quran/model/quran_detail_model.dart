
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quran_detail_model.freezed.dart';
part 'quran_detail_model.g.dart';

@freezed
class QuranDetailModel with _$QuranDetailModel {
  factory QuranDetailModel({
    @Default(0) int code,
    @Default('') String message,
    DetailSurat? data,
  }) = _QuranDetailModel;

  factory QuranDetailModel.fromJson(Map<String, dynamic> json) =>
      _$QuranDetailModelFromJson(json);
}

@freezed
class DetailSurat with _$DetailSurat {
  factory DetailSurat({
    @Default(0) int nomor,
    @Default('') String nama,
    @Default('') String namaLatin,
    @Default(0) int jumlahAyat,
    @Default('') String tempatTurun,
    @Default('') String arti,
    @Default('') String deskripsi,
    Map<String, dynamic>? audioFull,
    List<DataAyat>? ayat
  }) = _DetailSurat;

  factory DetailSurat.fromJson(Map<String, dynamic> json) =>
      _$DetailSuratFromJson(json);
}

@freezed
class DataAyat with _$DataAyat {
  factory DataAyat({
    @Default(0) int nomorAyat,
    @Default('') String teksArab,
    @Default('') String teksLatin,
    @Default('') String teksIndonesia,
    Map<String, dynamic>? audio,
    @Default(false) isPlay,
  }) = _DataAyat;

  factory DataAyat.fromJson(Map<String, dynamic> json) =>
      _$DataAyatFromJson(json);
}
