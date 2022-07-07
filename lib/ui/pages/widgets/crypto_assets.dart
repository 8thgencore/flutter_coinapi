import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_coinapi/core/cubit/crypto_assets_cubit.dart';
import 'package:flutter_coinapi/l10n/l10n.dart';
import 'package:flutter_coinapi/resources/typography.dart';

class CryptoAssets extends StatelessWidget {
  const CryptoAssets({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    BlocProvider.of<CryptoAssetsCubit>(context).getCryptoAssets();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.cryptoAssets, style: AppTypography.r16),
        Container(
          height: 200,
          padding: const EdgeInsets.only(top: 20),
          child: BlocBuilder<CryptoAssetsCubit, CryptoAssetsState>(
            builder: (context, state) {
              if (state is! CryptoLoaded) {
                return const Center(child: CircularProgressIndicator());
              }
              final cryptoAssets = state.cryptoAssets;
              if (cryptoAssets.isEmpty) {
                return CryptoAssetsCard(
                  text: l10n.cryptoAssetsNotFound,
                  url: 'http://via.placeholder.com/350x150',
                );
              }
              return ListView.builder(
                shrinkWrap: true,
                itemCount: cryptoAssets.length,
                itemBuilder: (context, index) {
                  return CryptoAssetsCard(
                    text: cryptoAssets[index].assetId,
                    url: cryptoAssets[index].url,
                  );
                },
              );
            },
          ),
        )
      ],
    );
  }
}

class CryptoAssetsCard extends StatelessWidget {
  const CryptoAssetsCard({
    required this.url,
    required this.text,
    super.key,
  });

  final String url;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CachedCircleAvatar(url: url),
        title: Center(
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class CachedCircleAvatar extends StatelessWidget {
  const CachedCircleAvatar({
    required this.url,
    super.key,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundImage: CachedNetworkImageProvider(
        url,
        errorListener: () => const Icon(Icons.error),
      ),
    );
  }
}
