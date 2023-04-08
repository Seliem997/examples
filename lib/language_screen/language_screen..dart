import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learning/language_screen/language_picker_widget.dart';
import 'package:learning/shared/components/components.dart';
import 'package:sizer/sizer.dart';

import 'language_widgets.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Change language Screen',
        ),
        actions: [
          LanguagePickerWidget(),
        ],
      ),
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.headline2,
            ),
            verticalSpace(3),
            const LanguageWidget(),
            verticalSpace(3),
            Text(
              AppLocalizations.of(context)!.name,
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
      ),
    );
  }
}
