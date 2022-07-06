import 'package:dio/dio.dart';
import 'package:flutter_coinapi/core/helpers/constants.dart';

abstract class INetworkService {
  Future<List<dynamic>> getCryptoAssets();
}

class NetworkService implements INetworkService {
  NetworkService(this._dioClient);

  final Dio _dioClient;

  @override
  Future<List<dynamic>> getCryptoAssets() async {
    try {
      final result = await _dioClient.get<List<dynamic>>(
        baseUrl,
        options: Options(
          headers: <String, String>{'X-CoinAPI-Key': '{$apiKey}'},
        ),
      );
      return result.data!;
    } on Exception catch (e) {
      return <List<dynamic>>[];
    }
  }
}
