// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuranDetailModelImpl _$$QuranDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuranDetailModelImpl(
      code: (json['code'] as num?)?.toInt() ?? 0,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : DetailSurat.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QuranDetailModelImplToJson(
        _$QuranDetailModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$DetailSuratImpl _$$DetailSuratImplFromJson(Map<String, dynamic> json) =>
    _$DetailSuratImpl(
      nomor: (json['nomor'] as num?)?.toInt() ?? 0,
      nama: json['nama'] as String? ?? '',
      namaLatin: json['namaLatin'] as String? ?? '',
      jumlahAyat: (json['jumlahAyat'] as num?)?.toInt() ?? 0,
      tempatTurun: json['tempatTurun'] as String? ?? '',
      arti: json['arti'] as String? ?? '',
      deskripsi: json['deskripsi'] as String? ?? '',
      audioFull: json['audioFull'] as Map<String, dynamic>?,
      ayat: (json['ayat'] as List<dynamic>?)
          ?.map((e) => DataAyat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailSuratImplToJson(_$DetailSuratImpl instance) =>
    <String, dynamic>{
      'nomor': instance.nomor,
      'nama': instance.nama,
      'namaLatin': instance.namaLatin,
      'jumlahAyat': instance.jumlahAyat,
      'tempatTurun': instance.tempatTurun,
      'arti': instance.arti,
      'deskripsi': instance.deskripsi,
      'audioFull': instance.audioFull,
      'ayat': instance.ayat,
    };

_$DataAyatImpl _$$DataAyatImplFromJson(Map<String, dynamic> json) =>
    _$DataAyatImpl(
      nomorAyat: (json['nomorAyat'] as num?)?.toInt() ?? 0,
      teksArab: json['teksArab'] as String? ?? '',
      teksLatin: json['teksLatin'] as String? ?? '',
      teksIndonesia: json['teksIndonesia'] as String? ?? '',
      audio: json['audio'] as Map<String, dynamic>?,
      isPlay: json['isPlay'] ?? false,
    );

Map<String, dynamic> _$$DataAyatImplToJson(_$DataAyatImpl instance) =>
    <String, dynamic>{
      'nomorAyat': instance.nomorAyat,
      'teksArab': instance.teksArab,
      'teksLatin': instance.teksLatin,
      'teksIndonesia': instance.teksIndonesia,
      'audio': instance.audio,
      'isPlay': instance.isPlay,
    };
