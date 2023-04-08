import 'package:flutter/material.dart';

import '../l10n/l10n.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final flage = L10n.getFlag(locale.languageCode);

    return Text(
      flage,
      style: Theme.of(context).textTheme.headline3 ,
    );
  }

}
