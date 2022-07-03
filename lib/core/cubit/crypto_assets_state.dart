part of 'crypto_assets_cubit.dart';

@immutable
abstract class CryptoAssetsState {}

class CryptoInitial extends CryptoAssetsState {}

class CryptoLoaded extends CryptoAssetsState {
  CryptoLoaded({required this.cryptoAssets});

  final List<CryptoAsset> cryptoAssets;
}
