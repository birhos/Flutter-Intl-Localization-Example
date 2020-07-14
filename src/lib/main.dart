import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:intl_example/src/localizationConstants.dart';
import 'package:intl_example/src/app/homePage.dart';
import 'package:intl_example/src/blocs/localizations/languageBloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    BlocProvider(
      create: (_) => LanguageBloc()..add(LanguageLoadStarted()),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (BuildContext context, LanguageState languageState) {
        return MaterialApp(
          title: 'Intl Localizations',
          // showPerformanceOverlay: true,
          debugShowCheckedModeBanner: false,

          //
          locale: languageState.locale,
          localizationsDelegates: LocalizationConstants.localizationsDelegates,
          supportedLocales: LocalizationConstants.supportedLocales,

          home: HomePage(),
        );
      },
    );
  }
}
