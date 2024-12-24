// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuranDetailModel _$QuranDetailModelFromJson(Map<String, dynamic> json) {
  return _QuranDetailModel.fromJson(json);
}

/// @nodoc
mixin _$QuranDetailModel {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DetailSurat? get data => throw _privateConstructorUsedError;

  /// Serializes this QuranDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuranDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuranDetailModelCopyWith<QuranDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranDetailModelCopyWith<$Res> {
  factory $QuranDetailModelCopyWith(
          QuranDetailModel value, $Res Function(QuranDetailModel) then) =
      _$QuranDetailModelCopyWithImpl<$Res, QuranDetailModel>;
  @useResult
  $Res call({int code, String message, DetailSurat? data});

  $DetailSuratCopyWith<$Res>? get data;
}

/// @nodoc
class _$QuranDetailModelCopyWithImpl<$Res, $Val extends QuranDetailModel>
    implements $QuranDetailModelCopyWith<$Res> {
  _$QuranDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuranDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailSurat?,
    ) as $Val);
  }

  /// Create a copy of QuranDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailSuratCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DetailSuratCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuranDetailModelImplCopyWith<$Res>
    implements $QuranDetailModelCopyWith<$Res> {
  factory _$$QuranDetailModelImplCopyWith(_$QuranDetailModelImpl value,
          $Res Function(_$QuranDetailModelImpl) then) =
      __$$QuranDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, DetailSurat? data});

  @override
  $DetailSuratCopyWith<$Res>? get data;
}

/// @nodoc
class __$$QuranDetailModelImplCopyWithImpl<$Res>
    extends _$QuranDetailModelCopyWithImpl<$Res, _$QuranDetailModelImpl>
    implements _$$QuranDetailModelImplCopyWith<$Res> {
  __$$QuranDetailModelImplCopyWithImpl(_$QuranDetailModelImpl _value,
      $Res Function(_$QuranDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuranDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$QuranDetailModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailSurat?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuranDetailModelImpl implements _QuranDetailModel {
  _$QuranDetailModelImpl({this.code = 0, this.message = '', this.data});

  factory _$QuranDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranDetailModelImplFromJson(json);

  @override
  @JsonKey()
  final int code;
  @override
  @JsonKey()
  final String message;
  @override
  final DetailSurat? data;

  @override
  String toString() {
    return 'QuranDetailModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranDetailModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data);

  /// Create a copy of QuranDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranDetailModelImplCopyWith<_$QuranDetailModelImpl> get copyWith =>
      __$$QuranDetailModelImplCopyWithImpl<_$QuranDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranDetailModelImplToJson(
      this,
    );
  }
}

abstract class _QuranDetailModel implements QuranDetailModel {
  factory _QuranDetailModel(
      {final int code,
      final String message,
      final DetailSurat? data}) = _$QuranDetailModelImpl;

  factory _QuranDetailModel.fromJson(Map<String, dynamic> json) =
      _$QuranDetailModelImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  DetailSurat? get data;

  /// Create a copy of QuranDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuranDetailModelImplCopyWith<_$QuranDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailSurat _$DetailSuratFromJson(Map<String, dynamic> json) {
  return _DetailSurat.fromJson(json);
}

/// @nodoc
mixin _$DetailSurat {
  int get nomor => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get namaLatin => throw _privateConstructorUsedError;
  int get jumlahAyat => throw _privateConstructorUsedError;
  String get tempatTurun => throw _privateConstructorUsedError;
  String get arti => throw _privateConstructorUsedError;
  String get deskripsi => throw _privateConstructorUsedError;
  Map<String, dynamic>? get audioFull => throw _privateConstructorUsedError;
  List<DataAyat>? get ayat => throw _privateConstructorUsedError;

  /// Serializes this DetailSurat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailSurat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailSuratCopyWith<DetailSurat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailSuratCopyWith<$Res> {
  factory $DetailSuratCopyWith(
          DetailSurat value, $Res Function(DetailSurat) then) =
      _$DetailSuratCopyWithImpl<$Res, DetailSurat>;
  @useResult
  $Res call(
      {int nomor,
      String nama,
      String namaLatin,
      int jumlahAyat,
      String tempatTurun,
      String arti,
      String deskripsi,
      Map<String, dynamic>? audioFull,
      List<DataAyat>? ayat});
}

/// @nodoc
class _$DetailSuratCopyWithImpl<$Res, $Val extends DetailSurat>
    implements $DetailSuratCopyWith<$Res> {
  _$DetailSuratCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailSurat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomor = null,
    Object? nama = null,
    Object? namaLatin = null,
    Object? jumlahAyat = null,
    Object? tempatTurun = null,
    Object? arti = null,
    Object? deskripsi = null,
    Object? audioFull = freezed,
    Object? ayat = freezed,
  }) {
    return _then(_value.copyWith(
      nomor: null == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      namaLatin: null == namaLatin
          ? _value.namaLatin
          : namaLatin // ignore: cast_nullable_to_non_nullable
              as String,
      jumlahAyat: null == jumlahAyat
          ? _value.jumlahAyat
          : jumlahAyat // ignore: cast_nullable_to_non_nullable
              as int,
      tempatTurun: null == tempatTurun
          ? _value.tempatTurun
          : tempatTurun // ignore: cast_nullable_to_non_nullable
              as String,
      arti: null == arti
          ? _value.arti
          : arti // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      audioFull: freezed == audioFull
          ? _value.audioFull
          : audioFull // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      ayat: freezed == ayat
          ? _value.ayat
          : ayat // ignore: cast_nullable_to_non_nullable
              as List<DataAyat>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailSuratImplCopyWith<$Res>
    implements $DetailSuratCopyWith<$Res> {
  factory _$$DetailSuratImplCopyWith(
          _$DetailSuratImpl value, $Res Function(_$DetailSuratImpl) then) =
      __$$DetailSuratImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int nomor,
      String nama,
      String namaLatin,
      int jumlahAyat,
      String tempatTurun,
      String arti,
      String deskripsi,
      Map<String, dynamic>? audioFull,
      List<DataAyat>? ayat});
}

/// @nodoc
class __$$DetailSuratImplCopyWithImpl<$Res>
    extends _$DetailSuratCopyWithImpl<$Res, _$DetailSuratImpl>
    implements _$$DetailSuratImplCopyWith<$Res> {
  __$$DetailSuratImplCopyWithImpl(
      _$DetailSuratImpl _value, $Res Function(_$DetailSuratImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailSurat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomor = null,
    Object? nama = null,
    Object? namaLatin = null,
    Object? jumlahAyat = null,
    Object? tempatTurun = null,
    Object? arti = null,
    Object? deskripsi = null,
    Object? audioFull = freezed,
    Object? ayat = freezed,
  }) {
    return _then(_$DetailSuratImpl(
      nomor: null == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      namaLatin: null == namaLatin
          ? _value.namaLatin
          : namaLatin // ignore: cast_nullable_to_non_nullable
              as String,
      jumlahAyat: null == jumlahAyat
          ? _value.jumlahAyat
          : jumlahAyat // ignore: cast_nullable_to_non_nullable
              as int,
      tempatTurun: null == tempatTurun
          ? _value.tempatTurun
          : tempatTurun // ignore: cast_nullable_to_non_nullable
              as String,
      arti: null == arti
          ? _value.arti
          : arti // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      audioFull: freezed == audioFull
          ? _value._audioFull
          : audioFull // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      ayat: freezed == ayat
          ? _value._ayat
          : ayat // ignore: cast_nullable_to_non_nullable
              as List<DataAyat>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailSuratImpl implements _DetailSurat {
  _$DetailSuratImpl(
      {this.nomor = 0,
      this.nama = '',
      this.namaLatin = '',
      this.jumlahAyat = 0,
      this.tempatTurun = '',
      this.arti = '',
      this.deskripsi = '',
      final Map<String, dynamic>? audioFull,
      final List<DataAyat>? ayat})
      : _audioFull = audioFull,
        _ayat = ayat;

  factory _$DetailSuratImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailSuratImplFromJson(json);

  @override
  @JsonKey()
  final int nomor;
  @override
  @JsonKey()
  final String nama;
  @override
  @JsonKey()
  final String namaLatin;
  @override
  @JsonKey()
  final int jumlahAyat;
  @override
  @JsonKey()
  final String tempatTurun;
  @override
  @JsonKey()
  final String arti;
  @override
  @JsonKey()
  final String deskripsi;
  final Map<String, dynamic>? _audioFull;
  @override
  Map<String, dynamic>? get audioFull {
    final value = _audioFull;
    if (value == null) return null;
    if (_audioFull is EqualUnmodifiableMapView) return _audioFull;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<DataAyat>? _ayat;
  @override
  List<DataAyat>? get ayat {
    final value = _ayat;
    if (value == null) return null;
    if (_ayat is EqualUnmodifiableListView) return _ayat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DetailSurat(nomor: $nomor, nama: $nama, namaLatin: $namaLatin, jumlahAyat: $jumlahAyat, tempatTurun: $tempatTurun, arti: $arti, deskripsi: $deskripsi, audioFull: $audioFull, ayat: $ayat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailSuratImpl &&
            (identical(other.nomor, nomor) || other.nomor == nomor) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.namaLatin, namaLatin) ||
                other.namaLatin == namaLatin) &&
            (identical(other.jumlahAyat, jumlahAyat) ||
                other.jumlahAyat == jumlahAyat) &&
            (identical(other.tempatTurun, tempatTurun) ||
                other.tempatTurun == tempatTurun) &&
            (identical(other.arti, arti) || other.arti == arti) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            const DeepCollectionEquality()
                .equals(other._audioFull, _audioFull) &&
            const DeepCollectionEquality().equals(other._ayat, _ayat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      nomor,
      nama,
      namaLatin,
      jumlahAyat,
      tempatTurun,
      arti,
      deskripsi,
      const DeepCollectionEquality().hash(_audioFull),
      const DeepCollectionEquality().hash(_ayat));

  /// Create a copy of DetailSurat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailSuratImplCopyWith<_$DetailSuratImpl> get copyWith =>
      __$$DetailSuratImplCopyWithImpl<_$DetailSuratImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailSuratImplToJson(
      this,
    );
  }
}

abstract class _DetailSurat implements DetailSurat {
  factory _DetailSurat(
      {final int nomor,
      final String nama,
      final String namaLatin,
      final int jumlahAyat,
      final String tempatTurun,
      final String arti,
      final String deskripsi,
      final Map<String, dynamic>? audioFull,
      final List<DataAyat>? ayat}) = _$DetailSuratImpl;

  factory _DetailSurat.fromJson(Map<String, dynamic> json) =
      _$DetailSuratImpl.fromJson;

  @override
  int get nomor;
  @override
  String get nama;
  @override
  String get namaLatin;
  @override
  int get jumlahAyat;
  @override
  String get tempatTurun;
  @override
  String get arti;
  @override
  String get deskripsi;
  @override
  Map<String, dynamic>? get audioFull;
  @override
  List<DataAyat>? get ayat;

  /// Create a copy of DetailSurat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailSuratImplCopyWith<_$DetailSuratImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataAyat _$DataAyatFromJson(Map<String, dynamic> json) {
  return _DataAyat.fromJson(json);
}

/// @nodoc
mixin _$DataAyat {
  int get nomorAyat => throw _privateConstructorUsedError;
  String get teksArab => throw _privateConstructorUsedError;
  String get teksLatin => throw _privateConstructorUsedError;
  String get teksIndonesia => throw _privateConstructorUsedError;
  Map<String, dynamic>? get audio => throw _privateConstructorUsedError;
  dynamic get isPlay => throw _privateConstructorUsedError;

  /// Serializes this DataAyat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataAyat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataAyatCopyWith<DataAyat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataAyatCopyWith<$Res> {
  factory $DataAyatCopyWith(DataAyat value, $Res Function(DataAyat) then) =
      _$DataAyatCopyWithImpl<$Res, DataAyat>;
  @useResult
  $Res call(
      {int nomorAyat,
      String teksArab,
      String teksLatin,
      String teksIndonesia,
      Map<String, dynamic>? audio,
      dynamic isPlay});
}

/// @nodoc
class _$DataAyatCopyWithImpl<$Res, $Val extends DataAyat>
    implements $DataAyatCopyWith<$Res> {
  _$DataAyatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataAyat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomorAyat = null,
    Object? teksArab = null,
    Object? teksLatin = null,
    Object? teksIndonesia = null,
    Object? audio = freezed,
    Object? isPlay = freezed,
  }) {
    return _then(_value.copyWith(
      nomorAyat: null == nomorAyat
          ? _value.nomorAyat
          : nomorAyat // ignore: cast_nullable_to_non_nullable
              as int,
      teksArab: null == teksArab
          ? _value.teksArab
          : teksArab // ignore: cast_nullable_to_non_nullable
              as String,
      teksLatin: null == teksLatin
          ? _value.teksLatin
          : teksLatin // ignore: cast_nullable_to_non_nullable
              as String,
      teksIndonesia: null == teksIndonesia
          ? _value.teksIndonesia
          : teksIndonesia // ignore: cast_nullable_to_non_nullable
              as String,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      isPlay: freezed == isPlay
          ? _value.isPlay
          : isPlay // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataAyatImplCopyWith<$Res>
    implements $DataAyatCopyWith<$Res> {
  factory _$$DataAyatImplCopyWith(
          _$DataAyatImpl value, $Res Function(_$DataAyatImpl) then) =
      __$$DataAyatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int nomorAyat,
      String teksArab,
      String teksLatin,
      String teksIndonesia,
      Map<String, dynamic>? audio,
      dynamic isPlay});
}

/// @nodoc
class __$$DataAyatImplCopyWithImpl<$Res>
    extends _$DataAyatCopyWithImpl<$Res, _$DataAyatImpl>
    implements _$$DataAyatImplCopyWith<$Res> {
  __$$DataAyatImplCopyWithImpl(
      _$DataAyatImpl _value, $Res Function(_$DataAyatImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataAyat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomorAyat = null,
    Object? teksArab = null,
    Object? teksLatin = null,
    Object? teksIndonesia = null,
    Object? audio = freezed,
    Object? isPlay = freezed,
  }) {
    return _then(_$DataAyatImpl(
      nomorAyat: null == nomorAyat
          ? _value.nomorAyat
          : nomorAyat // ignore: cast_nullable_to_non_nullable
              as int,
      teksArab: null == teksArab
          ? _value.teksArab
          : teksArab // ignore: cast_nullable_to_non_nullable
              as String,
      teksLatin: null == teksLatin
          ? _value.teksLatin
          : teksLatin // ignore: cast_nullable_to_non_nullable
              as String,
      teksIndonesia: null == teksIndonesia
          ? _value.teksIndonesia
          : teksIndonesia // ignore: cast_nullable_to_non_nullable
              as String,
      audio: freezed == audio
          ? _value._audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      isPlay: freezed == isPlay ? _value.isPlay! : isPlay,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataAyatImpl implements _DataAyat {
  _$DataAyatImpl(
      {this.nomorAyat = 0,
      this.teksArab = '',
      this.teksLatin = '',
      this.teksIndonesia = '',
      final Map<String, dynamic>? audio,
      this.isPlay = false})
      : _audio = audio;

  factory _$DataAyatImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataAyatImplFromJson(json);

  @override
  @JsonKey()
  final int nomorAyat;
  @override
  @JsonKey()
  final String teksArab;
  @override
  @JsonKey()
  final String teksLatin;
  @override
  @JsonKey()
  final String teksIndonesia;
  final Map<String, dynamic>? _audio;
  @override
  Map<String, dynamic>? get audio {
    final value = _audio;
    if (value == null) return null;
    if (_audio is EqualUnmodifiableMapView) return _audio;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final dynamic isPlay;

  @override
  String toString() {
    return 'DataAyat(nomorAyat: $nomorAyat, teksArab: $teksArab, teksLatin: $teksLatin, teksIndonesia: $teksIndonesia, audio: $audio, isPlay: $isPlay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataAyatImpl &&
            (identical(other.nomorAyat, nomorAyat) ||
                other.nomorAyat == nomorAyat) &&
            (identical(other.teksArab, teksArab) ||
                other.teksArab == teksArab) &&
            (identical(other.teksLatin, teksLatin) ||
                other.teksLatin == teksLatin) &&
            (identical(other.teksIndonesia, teksIndonesia) ||
                other.teksIndonesia == teksIndonesia) &&
            const DeepCollectionEquality().equals(other._audio, _audio) &&
            const DeepCollectionEquality().equals(other.isPlay, isPlay));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      nomorAyat,
      teksArab,
      teksLatin,
      teksIndonesia,
      const DeepCollectionEquality().hash(_audio),
      const DeepCollectionEquality().hash(isPlay));

  /// Create a copy of DataAyat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataAyatImplCopyWith<_$DataAyatImpl> get copyWith =>
      __$$DataAyatImplCopyWithImpl<_$DataAyatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataAyatImplToJson(
      this,
    );
  }
}

abstract class _DataAyat implements DataAyat {
  factory _DataAyat(
      {final int nomorAyat,
      final String teksArab,
      final String teksLatin,
      final String teksIndonesia,
      final Map<String, dynamic>? audio,
      final dynamic isPlay}) = _$DataAyatImpl;

  factory _DataAyat.fromJson(Map<String, dynamic> json) =
      _$DataAyatImpl.fromJson;

  @override
  int get nomorAyat;
  @override
  String get teksArab;
  @override
  String get teksLatin;
  @override
  String get teksIndonesia;
  @override
  Map<String, dynamic>? get audio;
  @override
  dynamic get isPlay;

  /// Create a copy of DataAyat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataAyatImplCopyWith<_$DataAyatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
