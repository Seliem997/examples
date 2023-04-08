import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning/l10n/l10n.dart';
import 'package:learning/language_screen/cubit/states.dart';
import 'package:learning/shared/local/cache_helper.dart';

class LanguageCubit extends Cubit<LanguageStates>{
  LanguageCubit() : super(LanguageInitialState());

  static LanguageCubit get(context) => BlocProvider.of(context);

  Locale _locale= const Locale('en');

  Locale get locale => _locale;

  void setLocale(Locale locale){
    if(!L10n.all.contains(locale)) return;
    _locale = locale;
    CacheHelper.saveData(key: 'lang', value: locale.languageCode);
    emit(SetLocaleState());
  }

  void clearLocale(){
    _locale= const Locale('en');
    emit(ClearLocaleState());
  }

}