import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_coinapi/core/cubit/crypto_assets_cubit.dart';
import 'package:flutter_coinapi/core/cubit/live_prices_cubit.dart';
import 'package:flutter_coinapi/core/helpers/initialize_dependency.dart';
import 'package:flutter_coinapi/core/services/repository.dart';
import 'package:flutter_coinapi/l10n/l10n.dart';
import 'package:flutter_coinapi/ui/pages/crypto_stats_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      darkTheme: ThemeData.dark(),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      supportedLocales: AppLocalizations.supportedLocales,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CryptoAssetsCubit(injector.get<IRepository>()),
          ),
          BlocProvider(create: (context) => LivePricesCubit()),
        ],
        child: const CryptoStatsPage(),
      ),
    );
  }
}
