import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_coinapi/core/cubit/crypto_assets_cubit.dart';
import 'package:flutter_coinapi/ui/pages/widgets/cached_circle_avatar.dart';

class CryptoAssets extends StatelessWidget {
  const CryptoAssets({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CryptoAssetsCubit>(context).getCryptoAssets();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text('Crypto assets', style: TextStyle(fontSize: 17)),
        Container(
          height: 400,
          padding: const EdgeInsets.only(top: 20),
          child: BlocBuilder<CryptoAssetsCubit, CryptoAssetsState>(
            builder: (context, state) {
              if (state is! CryptoLoaded) {
                return const Center(child: CircularProgressIndicator());
              }
              final cryptoAssets = state.cryptoAssets;
              return ListView.builder(
                shrinkWrap: true,
                itemCount: cryptoAssets.length,
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    leading: CachedCircleAvatar(
                      url: cryptoAssets[index].url,
                    ),
                    title: Center(
                      child: Text(
                        cryptoAssets[index].assetId,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
