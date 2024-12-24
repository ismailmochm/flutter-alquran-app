// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuranModel _$QuranModelFromJson(Map<String, dynamic> json) {
  return _QuranModel.fromJson(json);
}

/// @nodoc
mixin _$QuranModel {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<DataSurat>? get data => throw _privateConstructorUsedError;

  /// Serializes this QuranModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuranModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuranModelCopyWith<QuranModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranModelCopyWith<$Res> {
  factory $QuranModelCopyWith(
          QuranModel value, $Res Function(QuranModel) then) =
      _$QuranModelCopyWithImpl<$Res, QuranModel>;
  @useResult
  $Res call({int code, String message, List<DataSurat>? data});
}

/// @nodoc
class _$QuranModelCopyWithImpl<$Res, $Val extends QuranModel>
    implements $QuranModelCopyWith<$Res> {
  _$QuranModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuranModel
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
              as List<DataSurat>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuranModelImplCopyWith<$Res>
    implements $QuranModelCopyWith<$Res> {
  factory _$$QuranModelImplCopyWith(
          _$QuranModelImpl value, $Res Function(_$QuranModelImpl) then) =
      __$$QuranModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, List<DataSurat>? data});
}

/// @nodoc
class __$$QuranModelImplCopyWithImpl<$Res>
    extends _$QuranModelCopyWithImpl<$Res, _$QuranModelImpl>
    implements _$$QuranModelImplCopyWith<$Res> {
  __$$QuranModelImplCopyWithImpl(
      _$QuranModelImpl _value, $Res Function(_$QuranModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuranModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$QuranModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataSurat>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuranModelImpl implements _QuranModel {
  _$QuranModelImpl(
      {this.code = 0, this.message = '', final List<DataSurat>? data})
      : _data = data;

  factory _$QuranModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranModelImplFromJson(json);

  @override
  @JsonKey()
  final int code;
  @override
  @JsonKey()
  final String message;
  final List<DataSurat>? _data;
  @override
  List<DataSurat>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuranModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of QuranModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranModelImplCopyWith<_$QuranModelImpl> get copyWith =>
      __$$QuranModelImplCopyWithImpl<_$QuranModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranModelImplToJson(
      this,
    );
  }
}

abstract class _QuranModel implements QuranModel {
  factory _QuranModel(
      {final int code,
      final String message,
      final List<DataSurat>? data}) = _$QuranModelImpl;

  factory _QuranModel.fromJson(Map<String, dynamic> json) =
      _$QuranModelImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  List<DataSurat>? get data;

  /// Create a copy of QuranModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuranModelImplCopyWith<_$QuranModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataSurat _$DataSuratFromJson(Map<String, dynamic> json) {
  return _DataSurat.fromJson(json);
}

/// @nodoc
mixin _$DataSurat {
  int get nomor => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get namaLatin => throw _privateConstructorUsedError;
  int get jumlahAyat => throw _privateConstructorUsedError;
  String get tempatTurun => throw _privateConstructorUsedError;
  String get arti => throw _privateConstructorUsedError;
  String get deskripsi => throw _privateConstructorUsedError;
  Map<String, dynamic>? get audioFull => throw _privateConstructorUsedError;

  /// Serializes this DataSurat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataSurat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataSuratCopyWith<DataSurat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSuratCopyWith<$Res> {
  factory $DataSuratCopyWith(DataSurat value, $Res Function(DataSurat) then) =
      _$DataSuratCopyWithImpl<$Res, DataSurat>;
  @useResult
  $Res call(
      {int nomor,
      String nama,
      String namaLatin,
      int jumlahAyat,
      String tempatTurun,
      String arti,
      String deskripsi,
      Map<String, dynamic>? audioFull});
}

/// @nodoc
class _$DataSuratCopyWithImpl<$Res, $Val extends DataSurat>
    implements $DataSuratCopyWith<$Res> {
  _$DataSuratCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataSurat
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataSuratImplCopyWith<$Res>
    implements $DataSuratCopyWith<$Res> {
  factory _$$DataSuratImplCopyWith(
          _$DataSuratImpl value, $Res Function(_$DataSuratImpl) then) =
      __$$DataSuratImplCopyWithImpl<$Res>;
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
      Map<String, dynamic>? audioFull});
}

/// @nodoc
class __$$DataSuratImplCopyWithImpl<$Res>
    extends _$DataSuratCopyWithImpl<$Res, _$DataSuratImpl>
    implements _$$DataSuratImplCopyWith<$Res> {
  __$$DataSuratImplCopyWithImpl(
      _$DataSuratImpl _value, $Res Function(_$DataSuratImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataSurat
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
  }) {
    return _then(_$DataSuratImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataSuratImpl implements _DataSurat {
  _$DataSuratImpl(
      {this.nomor = 0,
      this.nama = '',
      this.namaLatin = '',
      this.jumlahAyat = 0,
      this.tempatTurun = '',
      this.arti = '',
      this.deskripsi = '',
      final Map<String, dynamic>? audioFull})
      : _audioFull = audioFull;

  factory _$DataSuratImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataSuratImplFromJson(json);

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

  @override
  String toString() {
    return 'DataSurat(nomor: $nomor, nama: $nama, namaLatin: $namaLatin, jumlahAyat: $jumlahAyat, tempatTurun: $tempatTurun, arti: $arti, deskripsi: $deskripsi, audioFull: $audioFull)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataSuratImpl &&
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
                .equals(other._audioFull, _audioFull));
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
      const DeepCollectionEquality().hash(_audioFull));

  /// Create a copy of DataSurat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataSuratImplCopyWith<_$DataSuratImpl> get copyWith =>
      __$$DataSuratImplCopyWithImpl<_$DataSuratImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataSuratImplToJson(
      this,
    );
  }
}

abstract class _DataSurat implements DataSurat {
  factory _DataSurat(
      {final int nomor,
      final String nama,
      final String namaLatin,
      final int jumlahAyat,
      final String tempatTurun,
      final String arti,
      final String deskripsi,
      final Map<String, dynamic>? audioFull}) = _$DataSuratImpl;

  factory _DataSurat.fromJson(Map<String, dynamic> json) =
      _$DataSuratImpl.fromJson;

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

  /// Create a copy of DataSurat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataSuratImplCopyWith<_$DataSuratImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
