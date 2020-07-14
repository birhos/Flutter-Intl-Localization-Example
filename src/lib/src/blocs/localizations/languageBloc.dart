import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:intl_example/src/enums/language.dart';
import 'package:intl_example/src/localizationConstants.dart';

part 'languageState.dart';

part 'languageEvent.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(LanguageState(LocalizationConstants.TR_LOCALE));

  @override
  Stream<LanguageState> mapEventToState(LanguageEvent event) async* {
    if (event is LanguageLoadStarted) {
      yield* _mapLanguageLoadStartedToState();
    } else if (event is LanguageSelected) {
      yield* _mapLanguageSelectedToState(event.languageCode);
    }
  }

  Stream<LanguageState> _mapLanguageLoadStartedToState() async* {
    yield LanguageState(LocalizationConstants.TR_LOCALE);
  }

  Stream<LanguageState> _mapLanguageSelectedToState(
      Language selectedLanguage) async* {
    if (selectedLanguage == Language.TR) {
      yield LanguageState(LocalizationConstants.TR_LOCALE);
    } else if (selectedLanguage == Language.EN) {
      yield LanguageState(LocalizationConstants.EN_LOCALE);
    }
  }
}
