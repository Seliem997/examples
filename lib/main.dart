import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:learning/language_screen/cubit/cubit.dart';
import 'package:learning/language_screen/cubit/states.dart';
import 'package:learning/luna_learning/screens/Home.dart';
import 'package:learning/shared/local/cache_helper.dart';
import 'package:learning/simple_e_commerce/simple_e_commerce.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'course_app/home_screen.dart';
import 'e_learning_course/screens/home_screen.dart';
import 'e_learning_course/widgets/header.dart';
import 'l10n/l10n.dart';
import 'language_screen/language_screen..dart';
import 'messenger/messenger_screen_view.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return BlocProvider(
        create: (BuildContext context) => LanguageCubit() ,
        child: BlocConsumer<LanguageCubit, LanguageStates>(
          listener: (context, state) {},
          builder:  (context, state) {
            return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              // home: const MyHomePage(title: 'Flutter Demo Home Page'),
              // locale: /*LanguageCubit.get(context).locale*/CacheHelper.returnData(key: 'lang') == 'en' ? const Locale('en',''): const Locale('ar',''),
              supportedLocales: L10n.all,
              localizationsDelegates: const [
                AppLocalizations.delegate, // Add this line
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              // supportedLocales: [
              //   Locale('en', ''), // English, no country code
              //   Locale('es', ''), // Spanish, no country code
              // ],
              home: SimpleEcommerce(),
            ) ;
          },
        ),
      );
    });
  }
}

