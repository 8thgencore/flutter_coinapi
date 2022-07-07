import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_coinapi/core/cubit/live_prices_cubit.dart';
import 'package:flutter_coinapi/core/models/live_trade.dart';
import 'package:flutter_coinapi/l10n/l10n.dart';
import 'package:flutter_coinapi/resources/typography.dart';

class LivePrices extends StatefulWidget {
  const LivePrices({super.key});

  @override
  _LivePricesState createState() => _LivePricesState();
}

class _LivePricesState extends State<LivePrices> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final realDataStream =
        BlocProvider.of<LivePricesCubit>(context).getRealData();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.livePrices, style: AppTypography.r16),
        Container(
          height: 230,
          padding: const EdgeInsets.only(top: 10),
          child: StreamBuilder<dynamic>(
            stream: realDataStream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final rawTradeData = jsonDecode(snapshot.data.toString())
                    as Map<String, dynamic>;
                if (rawTradeData['type'] != 'error') {
                  final tradeData = LiveTrade.fromJson(rawTradeData);
                  return ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: tradeList.length,
                    itemBuilder: (context, index) {
                      return LivePriceCard(index: index, tradeData: tradeData);
                    },
                  );
                } else {
                  return Container(
                    color: Colors.red,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: const Text('[ERROR]'),
                  );
                }
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ],
    );
  }
}

class LivePriceCard extends StatelessWidget {
  const LivePriceCard({
    required this.index,
    required this.tradeData,
    super.key,
  });

  final int index;
  final LiveTrade tradeData;

  @override
  Widget build(BuildContext context) {
    final indexCoin = tradeList.indexWhere(
      (element) => element.symbolId == tradeData.symbolId,
    );
    tradeList[indexCoin] = tradeList[indexCoin].copyWith(
      price: tradeData.price,
      takerSide: tradeData.takerSide,
    );
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          width: 200,
          height: 230,
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(tradeList[index].iconPath!),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    tradeList[index].symbolId.split('_')[2],
                    style: AppTypography.b20,
                  ),
                  Text(
                    "/${tradeList[index].symbolId.split('_')[3]}",
                    style: AppTypography.r20,
                  ),
                ],
              ),
              Text(
                tradeList[index].price.toString(),
                style: AppTypography.b24,
              ),
              Text(
                tradeList[index].takerSide,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
