import 'package:flutter_coinapi/resources/assets.gen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_trade.freezed.dart';

part 'live_trade.g.dart';

@freezed
class LiveTrade with _$LiveTrade {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory LiveTrade({
    required String symbolId,
    required double price,
    required String takerSide,
    String? iconPath,
  }) = _LiveTrade;

  factory LiveTrade.fromJson(Map<String, dynamic> json) =>
      _$LiveTradeFromJson(json);

}

 List<LiveTrade> tradeList = [
  LiveTrade(
    symbolId: 'COINBASE_SPOT_BTC_USD',
    price: 0,
    takerSide: '',
    iconPath: Assets.images.btc.path,
  ),
  LiveTrade(
    symbolId: 'COINBASE_SPOT_ETH_USD',
    price: 0,
    takerSide: '',
    iconPath: Assets.images.eth.path,
  ),
  LiveTrade(
    symbolId: 'COINBASE_SPOT_ADA_USD',
    price: 0,
    takerSide: '',
    iconPath: Assets.images.ada.path,
  ),
];

//
// {
// "time_exchange": "2022-07-05T20:24:57.5064630Z",
// "time_coinapi": "2022-07-05T20:24:57.5694198Z",
// "uuid": "50c90a90-c986-4221-b279-b7456ae18c9f",
// "price": 20593.13,
// "size": 0.00567007,
// "taker_side": "BUY",
// "symbol_id": "COINBASE_SPOT_BTC_USD",
// "sequence": 4178319,
// "type": "trade"
// }
