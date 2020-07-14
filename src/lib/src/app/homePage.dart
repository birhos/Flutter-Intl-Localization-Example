import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:intl_example/generated/l10n.dart';
import 'package:intl_example/src/localizationConstants.dart';
import 'package:intl_example/src/blocs/localizations/languageBloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Intl.getCurrentLocale()),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text(
                "TR",
              ),
              onPressed: () {
                BlocProvider.of<LanguageBloc>(context).add(
                  LanguageSelected(
                    LocalizationConstants.localeToLanguage(
                      LocalizationConstants.TR_LOCALE,
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text(
                "EN",
              ),
              onPressed: () {
                BlocProvider.of<LanguageBloc>(context).add(
                  LanguageSelected(
                    LocalizationConstants.localeToLanguage(
                      LocalizationConstants.EN_LOCALE,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            AppLocalizations.current.pageHomeListTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(""),
          Text(
            AppLocalizations.current.pageHomeSamplePlaceholder("Haydar"),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            AppLocalizations.current
                .pageHomeSamplePlaceholdersOrdered("Haydar", "Demir"),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            AppLocalizations.of(context).pageHomeSamplePlural(2),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
