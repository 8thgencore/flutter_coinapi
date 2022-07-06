// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'crypto_asset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CryptoAsset _$CryptoAssetFromJson(Map<String, dynamic> json) {
  return _CryptoAsset.fromJson(json);
}

/// @nodoc
mixin _$CryptoAsset {
  String get assetId => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptoAssetCopyWith<CryptoAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoAssetCopyWith<$Res> {
  factory $CryptoAssetCopyWith(
          CryptoAsset value, $Res Function(CryptoAsset) then) =
      _$CryptoAssetCopyWithImpl<$Res>;
  $Res call({String assetId, String url});
}

/// @nodoc
class _$CryptoAssetCopyWithImpl<$Res> implements $CryptoAssetCopyWith<$Res> {
  _$CryptoAssetCopyWithImpl(this._value, this._then);

  final CryptoAsset _value;
  // ignore: unused_field
  final $Res Function(CryptoAsset) _then;

  @override
  $Res call({
    Object? assetId = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      assetId: assetId == freezed
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CryptoAssetCopyWith<$Res>
    implements $CryptoAssetCopyWith<$Res> {
  factory _$$_CryptoAssetCopyWith(
          _$_CryptoAsset value, $Res Function(_$_CryptoAsset) then) =
      __$$_CryptoAssetCopyWithImpl<$Res>;
  @override
  $Res call({String assetId, String url});
}

/// @nodoc
class __$$_CryptoAssetCopyWithImpl<$Res> extends _$CryptoAssetCopyWithImpl<$Res>
    implements _$$_CryptoAssetCopyWith<$Res> {
  __$$_CryptoAssetCopyWithImpl(
      _$_CryptoAsset _value, $Res Function(_$_CryptoAsset) _then)
      : super(_value, (v) => _then(v as _$_CryptoAsset));

  @override
  _$_CryptoAsset get _value => super._value as _$_CryptoAsset;

  @override
  $Res call({
    Object? assetId = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_CryptoAsset(
      assetId: assetId == freezed
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_CryptoAsset implements _CryptoAsset {
  const _$_CryptoAsset({required this.assetId, required this.url});

  factory _$_CryptoAsset.fromJson(Map<String, dynamic> json) =>
      _$$_CryptoAssetFromJson(json);

  @override
  final String assetId;
  @override
  final String url;

  @override
  String toString() {
    return 'CryptoAsset(assetId: $assetId, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CryptoAsset &&
            const DeepCollectionEquality().equals(other.assetId, assetId) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(assetId),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_CryptoAssetCopyWith<_$_CryptoAsset> get copyWith =>
      __$$_CryptoAssetCopyWithImpl<_$_CryptoAsset>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CryptoAssetToJson(this);
  }
}

abstract class _CryptoAsset implements CryptoAsset {
  const factory _CryptoAsset(
      {required final String assetId,
      required final String url}) = _$_CryptoAsset;

  factory _CryptoAsset.fromJson(Map<String, dynamic> json) =
      _$_CryptoAsset.fromJson;

  @override
  String get assetId => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CryptoAssetCopyWith<_$_CryptoAsset> get copyWith =>
      throw _privateConstructorUsedError;
}
