import 'package:freezed_annotation/freezed_annotation.dart';

part 'quran_model.freezed.dart';
part 'quran_model.g.dart';

@freezed
class QuranModel with _$QuranModel {
  factory QuranModel({
    @Default(0) int code,
    @Default('') String message,
    List<DataSurat>? data,
  }) = _QuranModel;

  factory QuranModel.fromJson(Map<String, dynamic> json) =>
      _$QuranModelFromJson(json);
}

@freezed
class DataSurat with _$DataSurat {
   factory DataSurat({
      @Default(0) int nomor,
      @Default('') String nama,
      @Default('') String namaLatin,
      @Default(0) int jumlahAyat,
      @Default('') String tempatTurun,
      @Default('') String arti,
      @Default('') String deskripsi,
      Map<String, dynamic>? audioFull,
   }) = _DataSurat;

     factory DataSurat.fromJson(Map<String, dynamic> json) => _$DataSuratFromJson(json);
}


