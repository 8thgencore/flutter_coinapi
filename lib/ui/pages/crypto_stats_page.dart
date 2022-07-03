import 'package:flutter/material.dart';
import 'package:flutter_coinapi/l10n/l10n.dart';
import 'package:flutter_coinapi/resources/assets.gen.dart';
import 'package:flutter_coinapi/ui/pages/widgets/balance_card.dart';
import 'package:flutter_coinapi/ui/pages/widgets/crypto_assets.dart';
import 'package:flutter_coinapi/ui/pages/widgets/profile.dart';

class CryptoStatsPage extends StatelessWidget {
  const CryptoStatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileWidget(
                  message: l10n.message,
                  name: l10n.name,
                  imagePath: Assets.images.avatar.path,
                ),
                const SizedBox(height: 20),
                BalanceCard(
                  balance: l10n.dummyBalance,
                  monthlyProfit: l10n.dummyMonthlyProfit,
                  profitPer: l10n.dummyPercent,
                ),
                const SizedBox(height: 20),
                const CryptoAssets(),
                const SizedBox(height: 20),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
