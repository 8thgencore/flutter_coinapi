// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_trade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LiveTrade _$$_LiveTradeFromJson(Map<String, dynamic> json) => _$_LiveTrade(
      symbolId: json['symbol_id'] as String,
      price: (json['price'] as num).toDouble(),
      takerSide: json['taker_side'] as String,
      iconPath: json['icon_path'] as String?,
    );

Map<String, dynamic> _$$_LiveTradeToJson(_$_LiveTrade instance) =>
    <String, dynamic>{
      'symbol_id': instance.symbolId,
      'price': instance.price,
      'taker_side': instance.takerSide,
      'icon_path': instance.iconPath,
    };
