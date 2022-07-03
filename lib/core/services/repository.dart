import 'package:flutter_coinapi/core/models/crypto_asset.dart';
import 'package:flutter_coinapi/core/services/network_service.dart';

abstract class IRepository {
  Future<List<CryptoAsset>> getCryptoAssets();
}

class Repository implements IRepository {
  Repository(this._networkService);

  final INetworkService _networkService;

  @override
  Future<List<CryptoAsset>> getCryptoAssets() async {
    final result = await _networkService.getCryptoAssets();
    print(result.map((dynamic e) => print(e as Map<String, dynamic>)));

    return result
        .map((dynamic e) => CryptoAsset.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
