import 'package:flutter_dotenv/flutter_dotenv.dart';

const baseUrl = 'https://rest.coinapi.io/v1/assets/icons/100';
const webSocketUrl = 'wss://ws-sandbox.coinapi.io/v1/';
final apiKey = dotenv.env['COINAPI_TOKEN'];

