// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuranModelImpl _$$QuranModelImplFromJson(Map<String, dynamic> json) =>
    _$QuranModelImpl(
      code: (json['code'] as num?)?.toInt() ?? 0,
      message: json['message'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataSurat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuranModelImplToJson(_$QuranModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$DataSuratImpl _$$DataSuratImplFromJson(Map<String, dynamic> json) =>
    _$DataSuratImpl(
      nomor: (json['nomor'] as num?)?.toInt() ?? 0,
      nama: json['nama'] as String? ?? '',
      namaLatin: json['namaLatin'] as String? ?? '',
      jumlahAyat: (json['jumlahAyat'] as num?)?.toInt() ?? 0,
      tempatTurun: json['tempatTurun'] as String? ?? '',
      arti: json['arti'] as String? ?? '',
      deskripsi: json['deskripsi'] as String? ?? '',
      audioFull: json['audioFull'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$DataSuratImplToJson(_$DataSuratImpl instance) =>
    <String, dynamic>{
      'nomor': instance.nomor,
      'nama': instance.nama,
      'namaLatin': instance.namaLatin,
      'jumlahAyat': instance.jumlahAyat,
      'tempatTurun': instance.tempatTurun,
      'arti': instance.arti,
      'deskripsi': instance.deskripsi,
      'audioFull': instance.audioFull,
    };
