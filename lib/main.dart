import 'package:flutter/material.dart';
import 'package:munchkin/core/ui/constants/app_theme.dart';
import 'package:munchkin/navigation/router.gr.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'navigation/router.dart';

final _appRouter = AppRouter()
  ..delegate(initialRoutes: [const CreateGameRoute()]);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Munchkin Notebook',
      theme: AppTheme.theme,
      routerConfig: _appRouter.config(),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
