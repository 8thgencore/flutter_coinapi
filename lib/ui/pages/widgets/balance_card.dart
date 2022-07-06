import 'package:flutter/material.dart';
import 'package:flutter_coinapi/l10n/l10n.dart';
import 'package:flutter_coinapi/resources/typography.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({
    required this.balance,
    required this.monthlyProfit,
    required this.profitPer,
    super.key,
  });

  final String balance;
  final String monthlyProfit;
  final String profitPer;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blueAccent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.balance,
            style: AppTypography.r16.copyWith(color: Colors.white),
          ),
          const Text(
            r'$ 312.12',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.monthlyProfit,
                    style: AppTypography.r16.copyWith(color: Colors.white),
                  ),
                  Text(
                    r'$ 6423.2',
                    style: AppTypography.b18.copyWith(color: Colors.white),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.15),
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.arrow_drop_up,
                      size: 20,
                      color: Colors.greenAccent,
                    ),
                    Text(
                      'prof',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
