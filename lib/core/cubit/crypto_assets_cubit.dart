import 'package:bloc/bloc.dart';
import 'package:flutter_coinapi/core/models/crypto_asset.dart';
import 'package:flutter_coinapi/core/services/repository.dart';
import 'package:meta/meta.dart';

part 'crypto_assets_state.dart';

class CryptoAssetsCubit extends Cubit<CryptoAssetsState> {

  CryptoAssetsCubit(this._repository) : super(CryptoInitial());
  final IRepository _repository;

  void getCryptoAssets() {
    _repository.getCryptoAssets().then((cryptoAssets) {
      emit(CryptoLoaded(cryptoAssets: cryptoAssets));
    });
  }
}
