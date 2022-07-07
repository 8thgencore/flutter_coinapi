// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'live_trade.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LiveTrade _$LiveTradeFromJson(Map<String, dynamic> json) {
  return _LiveTrade.fromJson(json);
}

/// @nodoc
mixin _$LiveTrade {
  String get symbolId => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get takerSide => throw _privateConstructorUsedError;
  String? get iconPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveTradeCopyWith<LiveTrade> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveTradeCopyWith<$Res> {
  factory $LiveTradeCopyWith(LiveTrade value, $Res Function(LiveTrade) then) =
      _$LiveTradeCopyWithImpl<$Res>;
  $Res call(
      {String symbolId, double price, String takerSide, String? iconPath});
}

/// @nodoc
class _$LiveTradeCopyWithImpl<$Res> implements $LiveTradeCopyWith<$Res> {
  _$LiveTradeCopyWithImpl(this._value, this._then);

  final LiveTrade _value;
  // ignore: unused_field
  final $Res Function(LiveTrade) _then;

  @override
  $Res call({
    Object? symbolId = freezed,
    Object? price = freezed,
    Object? takerSide = freezed,
    Object? iconPath = freezed,
  }) {
    return _then(_value.copyWith(
      symbolId: symbolId == freezed
          ? _value.symbolId
          : symbolId // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      takerSide: takerSide == freezed
          ? _value.takerSide
          : takerSide // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: iconPath == freezed
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_LiveTradeCopyWith<$Res> implements $LiveTradeCopyWith<$Res> {
  factory _$$_LiveTradeCopyWith(
          _$_LiveTrade value, $Res Function(_$_LiveTrade) then) =
      __$$_LiveTradeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String symbolId, double price, String takerSide, String? iconPath});
}

/// @nodoc
class __$$_LiveTradeCopyWithImpl<$Res> extends _$LiveTradeCopyWithImpl<$Res>
    implements _$$_LiveTradeCopyWith<$Res> {
  __$$_LiveTradeCopyWithImpl(
      _$_LiveTrade _value, $Res Function(_$_LiveTrade) _then)
      : super(_value, (v) => _then(v as _$_LiveTrade));

  @override
  _$_LiveTrade get _value => super._value as _$_LiveTrade;

  @override
  $Res call({
    Object? symbolId = freezed,
    Object? price = freezed,
    Object? takerSide = freezed,
    Object? iconPath = freezed,
  }) {
    return _then(_$_LiveTrade(
      symbolId: symbolId == freezed
          ? _value.symbolId
          : symbolId // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      takerSide: takerSide == freezed
          ? _value.takerSide
          : takerSide // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: iconPath == freezed
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_LiveTrade implements _LiveTrade {
  const _$_LiveTrade(
      {required this.symbolId,
      required this.price,
      required this.takerSide,
      this.iconPath});

  factory _$_LiveTrade.fromJson(Map<String, dynamic> json) =>
      _$$_LiveTradeFromJson(json);

  @override
  final String symbolId;
  @override
  final double price;
  @override
  final String takerSide;
  @override
  final String? iconPath;

  @override
  String toString() {
    return 'LiveTrade(symbolId: $symbolId, price: $price, takerSide: $takerSide, iconPath: $iconPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LiveTrade &&
            const DeepCollectionEquality().equals(other.symbolId, symbolId) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.takerSide, takerSide) &&
            const DeepCollectionEquality().equals(other.iconPath, iconPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(symbolId),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(takerSide),
      const DeepCollectionEquality().hash(iconPath));

  @JsonKey(ignore: true)
  @override
  _$$_LiveTradeCopyWith<_$_LiveTrade> get copyWith =>
      __$$_LiveTradeCopyWithImpl<_$_LiveTrade>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LiveTradeToJson(this);
  }
}

abstract class _LiveTrade implements LiveTrade {
  const factory _LiveTrade(
      {required final String symbolId,
      required final double price,
      required final String takerSide,
      final String? iconPath}) = _$_LiveTrade;

  factory _LiveTrade.fromJson(Map<String, dynamic> json) =
      _$_LiveTrade.fromJson;

  @override
  String get symbolId;
  @override
  double get price;
  @override
  String get takerSide;
  @override
  String? get iconPath;
  @override
  @JsonKey(ignore: true)
  _$$_LiveTradeCopyWith<_$_LiveTrade> get copyWith =>
      throw _privateConstructorUsedError;
}
