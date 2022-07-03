// import 'package:flutter_coinapi/resources/assets.gen.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'trade.freezed.dart';
//
// part 'trade.g.dart';
//
// @freezed
// @JsonSerializable(fieldRename:FieldRename.snake)
// class Trade with _$Trade {
//   const factory Trade({
//     required String title1,
//     required String title2,
//     required String symbolId,
//     required String price,
//     required String takerSide,
//     required AssetGenImage icon,
//   }) = _Trade;
//
//   factory Trade.fromJson(Map<String, Object> json) => _$TradeFromJson(json);
// }
//
// // final List<Trade> tradeList = [
// //   Trade('BTC', '/USD', 'COINBASE_SPOT_BTC_USD', '', '', Assets.images.btc),
// //   Trade('ETH', '/USD', 'COINBASE_SPOT_ETH_USD', '', '', Assets.images.eth),
// //   Trade('ADA', '/USD', 'COINBASE_SPOT_ADA_USD', '', '', Assets.images.ada)
// // ];