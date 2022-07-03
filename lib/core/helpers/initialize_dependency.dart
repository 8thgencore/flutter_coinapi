import 'package:dio/dio.dart';
import 'package:flutter_coinapi/core/services/network_service.dart';
import 'package:flutter_coinapi/core/services/repository.dart';
import 'package:get_it/get_it.dart';

GetIt injector = GetIt.instance;

void initializeDependency() {
  injector.registerSingleton<Dio>(Dio());

  injector.registerSingleton<INetworkService>(
    NetworkService(injector.get<Dio>()),
  );

  injector.registerSingleton<IRepository>(
    Repository(injector.get<INetworkService>()),
  );
}
